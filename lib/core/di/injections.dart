import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
import '../network/dio_client.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  _initCore();
  _initAuth();
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
