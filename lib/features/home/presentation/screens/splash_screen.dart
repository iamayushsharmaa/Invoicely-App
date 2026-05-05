import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../auth/presentation/bloc/auth_bloc.dart';

class InvoiceSplash extends StatefulWidget {
  const InvoiceSplash({super.key});

  @override
  State<InvoiceSplash> createState() => _InvoiceSplashState();
}

class _InvoiceSplashState extends State<InvoiceSplash> {
  @override
  void initState() {
    super.initState();
    _checkAndNavigate();
  }

  Future<void> _checkAndNavigate() async {
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    final authState = context.read<AuthBloc>().state;

    if (authState is Authenticated) {
      context.go('/home');
    } else if (authState is Unauthenticated) {
      context.go('/onboarding');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          context.go('/home');
        } else if (state is Unauthenticated) {
          context.go('/onboarding');
        }
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF3F51B5), Colors.black],
              stops: [0.20, 0.7],
            ),
          ),
          child: const Center(
            child: Text(
              'Invoicely.',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
