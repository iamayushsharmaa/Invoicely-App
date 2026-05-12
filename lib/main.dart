import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:invoice/core/di/injections.dart';
import 'package:invoice/core/theme/app_theme.dart';
import 'package:invoice/features/auth/presentation/bloc/auth_bloc.dart';

import 'core/router/app_router.dart';
import 'features/client/data/models/client_model.dart';
import 'features/invoice/data/model/invoice_item_model.dart';
import 'features/invoice/data/model/invoice_model.dart';
import 'features/invoice/presentation/bloc/invoice_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  await Hive.initFlutter();
  Hive.registerAdapter(InvoiceItemModelAdapter());
  Hive.registerAdapter(InvoiceModelAdapter());
  await Hive.openBox<InvoiceModel>('invoices');

  Hive.registerAdapter(ClientModelAdapter());
  await Hive.openBox<ClientModel>('clientCache');
  await initDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => sl<AuthBloc>()..add(CheckAuthStatusEvent()),
        ),

        BlocProvider<InvoiceBloc>(
          create: (_) =>
              sl<InvoiceBloc>()..add(const InvoiceEvent.loadInvoices()),
        ),
      ],

      child: Builder(
        builder: (context) {
          final authBloc = context.read<AuthBloc>();

          return MaterialApp.router(
            routerConfig: AppRouter.createRouter(authBloc),
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
