import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invoice/config/routes.dart';
import 'package:invoice/features/auth/presentation/bloc/auth_bloc.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()..add(CheckAuthStatus())),
      ],
      child: Builder(
        builder: (context) => MaterialApp.router(
          routerConfig: createRouter(context.read<AuthBloc>()),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
