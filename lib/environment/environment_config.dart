enum Environment {
  dev,
  locale;

  bool get isDev => this == Environment.dev;
  bool get isLocale => this == Environment.locale;
}

class EnvironmentConfig {
  final Environment environment;
  final String baseUrl;

  EnvironmentConfig({
    required this.environment,
    required this.baseUrl,
  });
}
