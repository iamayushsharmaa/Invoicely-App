import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:invoice/features/analytics/presentation/screens/analytics_screen.dart';
import 'package:invoice/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:invoice/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:invoice/features/auth/presentation/screens/signin_screen.dart';
import 'package:invoice/features/auth/presentation/screens/signup_screen.dart';
import 'package:invoice/features/client/presentation/screens/client_detail_screen.dart';
import 'package:invoice/features/client/presentation/screens/client_screen.dart';
import 'package:invoice/features/home/presentation/screens/home_screen.dart';
import 'package:invoice/features/invoice/presentation/screens/invoice_detail_screen.dart';

import '../../features/client/presentation/bloc/client_bloc.dart';
import '../../features/client/presentation/screens/edit_client_info.dart';
import '../../features/home/presentation/screens/splash_screen.dart';
import '../../features/home/presentation/screens/widget_tree.dart';
import '../../features/invoice/domain/entities/invoice_enitity.dart';
import '../../features/invoice/presentation/bloc/invoice_bloc.dart';
import '../../features/invoice/presentation/screens/add_invoice.dart';
import '../../features/invoice/presentation/screens/edit_invoice.dart';
import '../../features/invoice/presentation/screens/invoices_screen.dart';
import '../../features/user/presentation/bloc/user_bloc.dart';
import '../di/injections.dart';
import 'route_names.dart';
import 'route_paths.dart';

class AppRouter {
  AppRouter._();

  static GoRouter createRouter(AuthBloc authBloc) {
    return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: RoutePaths.splash,
      refreshListenable: _GoRouterRefresh(authBloc),
      redirect: (context, state) {
        final authState = authBloc.state;
        final currentPath = state.uri.path;

        const publicRoutes = [
          RoutePaths.splash,
          RoutePaths.onboarding,
          RoutePaths.signIn,
          RoutePaths.signUp,
        ];

        final isPublicRoute = publicRoutes.contains(currentPath);

        if (authState is AuthInitial || authState is AuthLoading) {
          return currentPath == RoutePaths.splash ? null : RoutePaths.splash;
        }

        if (authState is Authenticated && isPublicRoute) {
          return RoutePaths.home;
        }

        if (authState is Unauthenticated && !isPublicRoute) {
          return RoutePaths.onboarding;
        }

        return null;
      },
      routes: [
        ..._authRoutes,
        ..._invoiceRoutes,
        ..._clientRoutes,
        _shellRoute,
      ],
      errorBuilder: (context, state) =>
          Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
    );
  }

  static final List<RouteBase> _authRoutes = [
    GoRoute(
      path: RoutePaths.splash,
      name: RouteNames.splash,
      builder: (context, state) => const InvoiceSplash(),
    ),
    GoRoute(
      path: RoutePaths.onboarding,
      name: RouteNames.onboarding,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: RoutePaths.signIn,
      name: RouteNames.signIn,
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: RoutePaths.signUp,
      name: RouteNames.signUp,
      builder: (context, state) => const SignupScreen(),
    ),
  ];

  static final List<RouteBase> _invoiceRoutes = [
    GoRoute(
      path: RoutePaths.addInvoice,
      name: RouteNames.addInvoice,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => sl<InvoiceBloc>()),
          BlocProvider(
            create: (_) =>
                sl<ClientBloc>()..add(const ClientEvent.getAllClients()),
          ),
          BlocProvider(
            create: (_) => sl<UserBloc>()..add(const UserEvent.getProfile()),
          ),
        ],
        child: const AddInvoiceScreen(),
      ),
    ),
    GoRoute(
      path: RoutePaths.invoiceDetails,
      name: RouteNames.invoiceDetails,
      builder: (context, state) {
        final invoiceId = state.extra as String;
        return InvoiceDetailScreen(invoiceId: invoiceId);
      },
    ),
    GoRoute(
      path: RoutePaths.editInvoice,
      name: RouteNames.editInvoice,
      builder: (context, state) {
        final invoice = state.extra as InvoiceEntity;
        return EditInvoice(invoice: invoice);
      },
    ),
  ];

  static final List<RouteBase> _clientRoutes = [
    GoRoute(
      path: RoutePaths.clientDetails,
      name: RouteNames.clientDetails,
      builder: (context, state) => const ClientDetailScreen(),
    ),
    GoRoute(
      path: RoutePaths.editClient,
      name: RouteNames.editClient,
      builder: (context, state) =>
          const EditClientInfo(name: '', email: '', phone: '', address: ''),
    ),
  ];

  static final RouteBase _shellRoute = ShellRoute(
    builder: (context, state, child) => MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<InvoiceBloc>()..add(const LoadInvoices()),
        ),
        BlocProvider(
          create: (_) =>
              sl<ClientBloc>()..add(const ClientEvent.getAllClients()),
        ),
        BlocProvider(
          create: (_) => sl<UserBloc>()..add(const UserEvent.getProfile()),
        ),
      ],
      child: WidgetTree(child: child),
    ),
    routes: [
      GoRoute(
        path: RoutePaths.home,
        name: RouteNames.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: RoutePaths.invoices,
        name: RouteNames.invoices,
        builder: (context, state) => const InvoiceScreen(),
      ),
      GoRoute(
        path: RoutePaths.clients,
        name: RouteNames.clients,
        builder: (context, state) => const ClientScreen(),
      ),
      GoRoute(
        path: RoutePaths.analytics,
        name: RouteNames.analytics,
        builder: (context, state) => const AnalyticsScreen(),
      ),
    ],
  );
}

class _GoRouterRefresh extends ChangeNotifier {
  late final StreamSubscription _subscription;

  _GoRouterRefresh(AuthBloc bloc) {
    _subscription = bloc.stream.listen((_) {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
