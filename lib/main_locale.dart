import 'package:flutter/material.dart';
import 'package:threebee_challenge/app.dart';
import 'package:threebee_challenge/bootstrap.dart';
import 'package:threebee_challenge/environment/environment_config.dart';

void main() async {
  await bootstrap(EnvironmentConfig(
    environment: Environment.locale,
    baseUrl: 'http://localhost:5000/api/v1/',
  ));

  runApp(const MyApp());
}
