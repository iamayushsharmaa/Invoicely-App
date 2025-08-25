import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:invoice/config/routes.dart';
import 'package:invoice/core/theme/app_theme.dart';
import 'package:invoice/features/auth/data/remote/auth_api_service.dart';
import 'package:invoice/features/auth/domain/repository/auth_repository_impl.dart';
import 'package:invoice/features/auth/presentation/bloc/auth_bloc.dart';

import 'features/auth/data/repository/auth_repository.dart';
import 'features/invoice/data/model/invoice_response.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dio = Dio();
  final googleSignIn = GoogleSignIn();
  final storage = FlutterSecureStorage();

  final authService = AuthService(
    dio: dio,
    googleSignIn: googleSignIn,
    storage: storage,
  );
  final authRepository = AuthRepositoryImpl(authService);

  await Hive.initFlutter();
  Hive.registerAdapter(InvoiceResponseAdapter());

  await Hive.openBox<InvoiceResponse>('invoiceCache');
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
          return MaterialApp.router(
            routerConfig: createRouter(context.read<AuthBloc>()),
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
