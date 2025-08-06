import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:invoice/core/network/dio_client.dart';
import 'package:invoice/features/analytics/presentation/screens/analytics_screen.dart';
import 'package:invoice/features/auth/domain/repository/auth_repository_impl.dart';
import 'package:invoice/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:invoice/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:invoice/features/auth/presentation/screens/signin_screen.dart';
import 'package:invoice/features/auth/presentation/screens/signup_screen.dart';
import 'package:invoice/features/client/presentation/screens/add_client_screen.dart';
import 'package:invoice/features/client/presentation/screens/client_screen.dart';
import 'package:invoice/features/home/presentation/screens/splash_screen.dart';
import 'package:invoice/features/home/presentation/screens/widget_tree.dart';
import 'package:invoice/features/invoice/presentation/screens/add_invoice.dart';
import 'package:invoice/features/invoice/presentation/screens/invoices_screen.dart';

import '../features/auth/data/remote/auth_api_service.dart';
import '../features/home/presentation/screens/home_screen.dart';

GoRouter createRouter(AuthBloc authBloc) {
  final initialLocation = '/invoice';

  final storage = FlutterSecureStorage();
  final dio = DioClient.create(storage);
  final authService = AuthService(
    dio: dio,
    googleSignIn: GoogleSignIn(),
    storage: storage,
  );
  final authRepository = AuthRepositoryImpl(authService);

  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: initialLocation,
    refreshListenable: GoRouterRefresh(authBloc),
    routes: [
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) =>
            BlocProvider.value(value: authBloc, child: const InvoiceSplash()),
      ),
      GoRoute(
        path: '/onboarding',
        name: 'onBoarding',
        builder: (context, state) => BlocProvider(
          create: (context) => AuthBloc(authRepository),
          child: OnBoardingScreen(),
        ),
      ),
      GoRoute(
        path: '/signin',
        name: 'signIn',
        builder: (context, state) => SigninScreen(),
      ),
      GoRoute(
        path: '/signup',
        name: 'signUp',
        builder: (context, state) => SignupScreen(),
      ),

      GoRoute(
        path: '/add-client',
        name: 'addClient',
        builder: (context, state) => const AddClientScreen(),
      ),
      GoRoute(
        path: '/add-invoice',
        name: 'addInvoice',
        builder: (context, state) => const AddInvoiceScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) => WidgetTree(child: child),
        routes: [
          GoRoute(
            path: '/home',
            name: 'home',
            builder: (context, state) => HomeScreen(),
          ),
          GoRoute(
            path: '/invoice',
            name: 'invoice',
            builder: (context, state) => InvoiceScreen(),
          ),
          GoRoute(
            path: '/clients',
            name: 'clients',
            builder: (context, state) => ClientScreen(),
          ),
          GoRoute(
            path: '/analytics',
            name: 'analytics',
            builder: (context, state) => AnalyticsScreen(),
          ),
        ],
      ),
    ],
    redirect: (context, state) {
      final authState = context.read<AuthBloc>().state;
      final currentPath = state.uri.path;
      final isPublicRoute = [
        '/onboarding',
        '/signin',
        '/signup',
      ].contains(currentPath);

      if (authState is Authenticated && isPublicRoute) {
        return '/home';
      }
      if (authState is Unauthenticated && !isPublicRoute) {
        return '/onboarding';
      }
      return null;
    },
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}

class GoRouterRefresh extends ChangeNotifier {
  final AuthBloc bloc;

  GoRouterRefresh(this.bloc) {
    bloc.stream.listen((_) {
      notifyListeners();
    });
  }
}
