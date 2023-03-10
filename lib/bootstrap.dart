import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:threebee_challenge/environment/environment_config.dart';
import 'package:threebee_challenge/features/authentication/authentication_notifier.dart';
import 'package:threebee_challenge/router/go_router_config.dart';
import 'package:threebee_challenge/services/shared_preferences_service.dart';
import 'package:threebee_challenge/shared_export.dart';

/// This is the entry point of the application
Future<void> bootstrap(EnvironmentConfig config) async {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.I.registerSingleton<EnvironmentConfig>(config);

  _registerIndipendentSingletons();

  if (config.environment.isLocale) {
    _registerSingletonsMockRepositories();
  } else {
    _registerSingletonsRepositories();
  }

  await authenticationNotifier.verifyToken();

  await _setDeviceOrientation();
}

void _registerIndipendentSingletons() {
  GetIt.I.registerLazySingleton<SharedPreferenceService>(() => SharedPreferenceService());
  GetIt.I.registerSingleton<AuthenticationNotifier>(AuthenticationNotifier());
  GetIt.I.registerSingleton<GoRouter>(createGoRouter());
}

void _registerSingletonsRepositories() {
  GetIt.I.registerLazySingleton<AuthenticationRepository>(() => AuthenticationRepository());
  GetIt.I.registerLazySingleton<ApiariesRepository>(() => ApiariesRepository());
}

void _registerSingletonsMockRepositories() {
  GetIt.I.registerLazySingleton<AuthenticationRepository>(() => MockAuthenticationRepository());
  GetIt.I.registerLazySingleton<ApiariesRepository>(() => MockApiariesRepository());
}

Future _setDeviceOrientation() async {
  final orientations = <DeviceOrientation>[];
  orientations.addAll([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  await SystemChrome.setPreferredOrientations(orientations);
}
