import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:threebee_challenge/services/shared_preferences_service.dart';

/// This is the entry point of the application
Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize singletons
  _registerSingletons();

  await _setDeviceOrientation();
}

void _registerSingletons() {
  GetIt.I.registerLazySingleton<SharedPreferenceService>(
      () => SharedPreferenceService());
}

Future _setDeviceOrientation() async {
  final orientations = <DeviceOrientation>[];
  orientations.addAll([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  await SystemChrome.setPreferredOrientations(orientations);
}
