import 'package:flutter/material.dart';
import 'package:threebee_challenge/app.dart';
import 'package:threebee_challenge/bootstrap.dart';
import 'package:threebee_challenge/environment/environment_config.dart';

void main() async {
  await bootstrap(EnvironmentConfig(
    environment: Environment.dev,
    baseUrl: 'https://api.3bee.com/api/v1',
  ));
  runApp(const MainApp());
}
