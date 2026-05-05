import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:invoice/config/routes.dart';
import 'package:invoice/core/di/injections.dart';
import 'package:invoice/core/theme/app_theme.dart';
import 'package:invoice/features/auth/presentation/bloc/auth_bloc.dart';

import 'features/invoice/data/model/invoice_item_model.dart';
import 'features/invoice/data/model/invoice_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  await Hive.initFlutter();
  Hive.registerAdapter(InvoiceItemModelAdapter());
  Hive.registerAdapter(InvoiceModelAdapter());
  await Hive.openBox<InvoiceModel>('invoices');
  await initDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (_) => sl<AuthBloc>()..add(CheckAuthStatusEvent()),
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
