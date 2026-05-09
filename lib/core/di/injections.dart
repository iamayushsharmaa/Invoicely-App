import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:invoice/features/client/data/datasources/client_local_datasource.dart';
import 'package:invoice/features/client/data/datasources/client_local_datasource_impl.dart';
import 'package:invoice/features/client/data/datasources/client_remote_datasource.dart';
import 'package:invoice/features/client/data/datasources/client_remote_datasource_impl.dart';
import 'package:invoice/features/client/data/models/client_model.dart';
import 'package:invoice/features/client/data/repository/client_repository_impl.dart';
import 'package:invoice/features/client/domain/repository/client_repository.dart';
import 'package:invoice/features/client/presentation/bloc/client_bloc.dart';
import 'package:invoice/features/invoice/presentation/bloc/invoice_bloc.dart';
import 'package:invoice/features/user/data/datasources/user_remote_datasource.dart';
import 'package:invoice/features/user/data/datasources/user_remote_datasource_impl.dart';
import 'package:invoice/features/user/data/repository/user_repository_impl.dart';
import 'package:invoice/features/user/domain/repository/user_repository.dart';
import 'package:invoice/features/user/domain/usecases/change_password_usecase.dart';
import 'package:invoice/features/user/domain/usecases/delete_account_usecase.dart';
import 'package:invoice/features/user/domain/usecases/get_profile_usecase.dart';
import 'package:invoice/features/user/domain/usecases/update_profile_usecase.dart';
import 'package:invoice/features/user/presentation/bloc/user_bloc.dart';

import '../../features/auth/data/datasource/auth_local_datasource.dart';
import '../../features/auth/data/datasource/auth_local_datasource_impl.dart';
import '../../features/auth/data/datasource/auth_remote_datasource.dart';
import '../../features/auth/data/datasource/auth_remote_datasource_impl.dart';
import '../../features/auth/data/repository/auth_repository_impl.dart';
import '../../features/auth/domain/repository/auth_repository.dart';
import '../../features/auth/domain/usecases/check_auth_status_usecase.dart';
import '../../features/auth/domain/usecases/google_signin_usecase.dart';
import '../../features/auth/domain/usecases/register_usecase.dart';
import '../../features/auth/domain/usecases/sign_in_usecase.dart';
import '../../features/auth/domain/usecases/sign_out_usecase.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/client/domain/usecases/create_client_usecase.dart';
import '../../features/client/domain/usecases/delete_client_usecase.dart';
import '../../features/client/domain/usecases/get_all_clients_usecase.dart';
import '../../features/client/domain/usecases/update_client_usecase.dart';
import '../../features/invoice/data/datasources/local/invoice_local_datasource.dart';
import '../../features/invoice/data/datasources/local/invoice_local_datasource_impl.dart';
import '../../features/invoice/data/datasources/remote/invoice_remote_datasource.dart';
import '../../features/invoice/data/datasources/remote/invoice_remote_datasource_impl.dart';
import '../../features/invoice/data/model/invoice_model.dart';
import '../../features/invoice/data/repository/invoice_repository_imp.dart';
import '../../features/invoice/domain/repository/invoice_repository.dart';
import '../../features/invoice/domain/usecases/create_invoice_usecase.dart';
import '../../features/invoice/domain/usecases/delete_invoice_usecase.dart';
import '../../features/invoice/domain/usecases/get_all_invoices_usecase.dart';
import '../../features/invoice/domain/usecases/get_invoice_by_client_usecase.dart';
import '../../features/invoice/domain/usecases/get_invoice_by_id_usecase.dart';
import '../../features/invoice/domain/usecases/mark_as_paid_usecase.dart';
import '../../features/invoice/domain/usecases/search_invoice_usecase.dart';
import '../../features/invoice/domain/usecases/update_invoice_usecase.dart';
import '../network/dio_client.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  _initCore();
  _initAuth();
  _initUser();

  await _initInvoice();
}

void _initCore() {
  sl.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
  );

  sl.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());

  sl.registerLazySingleton<Dio>(
    () => DioClient.create(sl<FlutterSecureStorage>()),
  );
}

void _initAuth() {
  sl.registerLazySingleton<AuthRemoteDatasource>(
    () => AuthRemoteDatasourceImpl(
      dio: sl<Dio>(),
      googleSignIn: sl<GoogleSignIn>(),
    ),
  );

  sl.registerLazySingleton<AuthLocalDatasource>(
    () => AuthLocalDatasourceImpl(sl<FlutterSecureStorage>()),
  );

  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remote: sl<AuthRemoteDatasource>(),
      local: sl<AuthLocalDatasource>(),
    ),
  );

  sl.registerLazySingleton(() => CheckAuthStatusUsecase(sl<AuthRepository>()));
  sl.registerLazySingleton(() => SignInUsecase(sl<AuthRepository>()));
  sl.registerLazySingleton(() => RegisterUsecase(sl<AuthRepository>()));
  sl.registerLazySingleton(() => GoogleSignInUsecase(sl<AuthRepository>()));
  sl.registerLazySingleton(() => SignOutUsecase(sl<AuthRepository>()));

  sl.registerFactory(
    () => AuthBloc(
      checkAuthStatus: sl<CheckAuthStatusUsecase>(),
      signIn: sl<SignInUsecase>(),
      register: sl<RegisterUsecase>(),
      googleSignIn: sl<GoogleSignInUsecase>(),
      signOut: sl<SignOutUsecase>(),
    ),
  );
}

Future<void> _initInvoice() async {
  final invoiceBox = await Hive.openBox<InvoiceModel>('invoices');
  sl.registerSingleton<Box<InvoiceModel>>(invoiceBox);

  sl.registerLazySingleton<InvoiceRemoteDataSource>(
    () => InvoiceRemoteDataSourceImpl(sl<Dio>()),
  );

  sl.registerLazySingleton<InvoiceLocalDataSource>(
    () => InvoiceLocalDataSourceImpl(sl<Box<InvoiceModel>>()),
  );

  sl.registerLazySingleton<InvoiceRepository>(
    () => InvoiceRepositoryImpl(
      sl<InvoiceRemoteDataSource>(),
      sl<InvoiceLocalDataSource>(),
    ),
  );

  sl.registerLazySingleton(
    () => GetAllInvoicesUseCase(sl<InvoiceRepository>()),
  );
  sl.registerLazySingleton(
    () => GetInvoiceByIdUseCase(sl<InvoiceRepository>()),
  );
  sl.registerLazySingleton(
    () => GetInvoicesByClientUseCase(sl<InvoiceRepository>()),
  );
  sl.registerLazySingleton(() => CreateInvoiceUseCase(sl<InvoiceRepository>()));
  sl.registerLazySingleton(() => UpdateInvoiceUseCase(sl<InvoiceRepository>()));
  sl.registerLazySingleton(() => DeleteInvoiceUseCase(sl<InvoiceRepository>()));
  sl.registerLazySingleton(() => MarkAsPaidUseCase(sl<InvoiceRepository>()));
  sl.registerLazySingleton(
    () => SearchInvoicesUseCase(sl<InvoiceRepository>()),
  );

  sl.registerFactory(
    () => InvoiceBloc(
      getAllInvoices: sl(),
      getInvoiceById: sl(),
      getInvoicesByClient: sl(),
      createInvoice: sl(),
      updateInvoice: sl(),
      deleteInvoice: sl(),
      markAsPaid: sl(),
      searchInvoices: sl(),
    ),
  );
}

Future<void> _initClient() async {
  sl.registerLazySingleton<Box<ClientModel>>(
    () => Hive.box<ClientModel>('clientCache'),
  );

  sl.registerLazySingleton<ClientRemoteDatasource>(
    () => ClientRemoteDatasourceImpl(sl<Dio>()),
  );

  sl.registerLazySingleton<ClientLocalDatasource>(
    () => ClientLocalDatasourceImpl(sl<Box<ClientModel>>()),
  );

  sl.registerLazySingleton<ClientRepository>(
    () => ClientRepositoryImpl(
      remote: sl<ClientRemoteDatasource>(),
      local: sl<ClientLocalDatasource>(),
    ),
  );

  sl.registerLazySingleton(() => GetAllClientsUseCase(sl<ClientRepository>()));
  sl.registerLazySingleton(() => CreateClientUseCase(sl<ClientRepository>()));
  sl.registerLazySingleton(() => UpdateClientUseCase(sl<ClientRepository>()));
  sl.registerLazySingleton(() => DeleteClientUseCase(sl<ClientRepository>()));

  sl.registerFactory<ClientBloc>(
    () => ClientBloc(
      getAllClientsUseCase: sl(),
      createClientUseCase: sl(),
      updateClientUseCase: sl(),
      deleteClientUseCase: sl(),
    ),
  );
}

Future<void> _initUser() async {
  sl.registerLazySingleton<UserRemoteDatasource>(
    () => UserRemoteDatasourceImpl(sl<Dio>()),
  );

  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(sl<UserRemoteDatasource>()),
  );

  sl.registerLazySingleton(() => GetProfileUseCase(sl<UserRepository>()));
  sl.registerLazySingleton(() => UpdateProfileUseCase(sl<UserRepository>()));
  sl.registerLazySingleton(() => ChangePasswordUseCase(sl<UserRepository>()));
  sl.registerLazySingleton(() => DeleteAccountUseCase(sl<UserRepository>()));

  sl.registerFactory<UserBloc>(
    () => UserBloc(
      getProfileUseCase: sl(),
      updateProfileUseCase: sl(),
      changePasswordUseCase: sl(),
      deleteAccountUseCase: sl(),
    ),
  );
}
