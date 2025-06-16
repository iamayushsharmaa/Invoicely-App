import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:invoice/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:invoice/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:invoice/features/auth/presentation/screens/signin_screen.dart';
import 'package:invoice/features/auth/presentation/screens/signup_screen.dart';
import 'package:invoice/features/home/presentation/widget_tree.dart';

import '../features/home/presentation/home_screen.dart';

GoRouter createRouter(AuthBloc authBloc) {

  final initialLocation = authBloc.state is Authenticated
      ? '/home'
      : '/onboarding';

  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: initialLocation,
    refreshListenable: GoRouterRefresh(authBloc),
    routes: [
      GoRoute(
        path: '/onboarding',
        name: 'onBoarding',
        builder: (context, state) => const OnBoardingScreen(),
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

      ShellRoute(
        builder: (context, state, child) => WidgetTree(child: child),
        routes: [
          GoRoute(
            path: '/home',
            name: 'home',
            builder: (context, state) => const HomeScreen(),
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
    bloc.stream.listen(( _) {
      notifyListeners();
    });
  }
}
