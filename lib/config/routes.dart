import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invoice/features/analytics/presentation/screens/analytics_screen.dart';
import 'package:invoice/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:invoice/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:invoice/features/auth/presentation/screens/signin_screen.dart';
import 'package:invoice/features/auth/presentation/screens/signup_screen.dart';
import 'package:invoice/features/client/presentation/screens/client_detail_screen.dart';
import 'package:invoice/features/client/presentation/screens/client_screen.dart';
import 'package:invoice/features/home/presentation/screens/splash_screen.dart';
import 'package:invoice/features/home/presentation/screens/widget_tree.dart';
import 'package:invoice/features/invoice/presentation/screens/add_invoice.dart';
import 'package:invoice/features/invoice/presentation/screens/invoices_screen.dart';

import '../features/client/presentation/screens/edit_client_info.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/invoice/presentation/screens/edit_invoice.dart';
import '../features/invoice/presentation/screens/invoice_detail_screen.dart';

GoRouter createRouter(AuthBloc authBloc) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/splash',
    refreshListenable: GoRouterRefresh(authBloc),
    routes: [
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const InvoiceSplash(),
      ),
      GoRoute(
        path: '/onboarding',
        name: 'onBoarding',
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: '/signin',
        name: 'signIn',
        builder: (context, state) => const SigninScreen(),
      ),
      GoRoute(
        path: '/signup',
        name: 'signUp',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/add-invoice',
        name: 'addInvoice',
        builder: (context, state) => const AddInvoiceScreen(),
      ),
      GoRoute(
        path: '/invoice-details',
        name: 'invoiceDetails',
        builder: (context, state) => const InvoiceDetailScreen(),
      ),

      GoRoute(
        path: '/client-details',
        name: 'clientDetails',
        builder: (context, state) => const ClientDetailScreen(),
      ),
      GoRoute(
        path: '/edit-invoice',
        name: 'editInvoice',
        builder: (context, state) => const EditInvoice(
          invoiceNumber: "#0111",
          date: "2025-08-30",
          amount: "\$1200",
          status: "Paid",
        ),
      ),
      GoRoute(
        path: '/edit-client',
        name: 'editClient',
        builder: (context, state) => const EditClientInfo(
          name: "Noah Henry",
          phone: "919999999999",
          email: "naohghr@gmail.com",
          address: "House no. 84, Bhopal",
        ),
      ),

      ShellRoute(
        builder: (context, state, child) => WidgetTree(child: child),
        routes: [
          GoRoute(
            path: '/home',
            name: 'home',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/invoices',
            name: 'invoices',
            builder: (context, state) => const InvoiceScreen(),
          ),
          GoRoute(
            path: '/clients',
            name: 'clients',
            builder: (context, state) => const ClientScreen(),
          ),
          GoRoute(
            path: '/analytics',
            name: 'analytics',
            builder: (context, state) => const AnalyticsScreen(),
          ),
        ],
      ),
    ],
    redirect: (context, state) {
      final authState = authBloc.state;
      final currentPath = state.uri.path;
      final isPublicRoute = [
        '/onboarding',
        '/signin',
        '/signup',
      ].contains(currentPath);

      if (authState is Authenticated && isPublicRoute) return '/home';
      if (authState is Unauthenticated && !isPublicRoute) return '/onboarding';
      return null;
    },
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}

class GoRouterRefresh extends ChangeNotifier {
  GoRouterRefresh(AuthBloc bloc) {
    bloc.stream.listen((_) => notifyListeners());
  }
}
