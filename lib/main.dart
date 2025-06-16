import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:invoice/config/routes.dart';
import 'package:invoice/features/auth/data/remote/auth_api_service.dart';
import 'package:invoice/features/auth/domain/repository/auth_repository_impl.dart';
import 'package:invoice/features/auth/presentation/bloc/auth_bloc.dart';

import 'features/auth/data/repository/auth_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dio = Dio();
  final googleSignIn = GoogleSignIn();
  final storage = FlutterSecureStorage();

  final authService = AuthService(dio: dio, googleSignIn: googleSignIn, storage: storage);
  final authRepository = AuthRepositoryImpl(authService);

  runApp(MyApp(authRepository));
}

class MyApp extends StatelessWidget {
  final AuthRepository authRepository;

  const MyApp(this.authRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(authRepository)..add(CheckAuthStatus()),
        ),
      ],
      child: Builder(
        builder: (context) {
          final authBloc = context.read<AuthBloc>();
          return MaterialApp.router(
            routerConfig: createRouter(context.read<AuthBloc>()),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
