import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:threebee_challenge/environment/environment_config.dart';
import 'package:threebee_challenge/features/authentication/authentication_notifier.dart';
import 'package:threebee_challenge/repositories/repositories.dart';
import 'package:threebee_challenge/services/shared_preferences_service.dart';

export 'package:threebee_challenge/models/models.dart';
export 'package:threebee_challenge/repositories/repositories.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:threebee_challenge/constants/constants.dart';

AuthenticationNotifier get authenticationNotifier => GetIt.I.get<AuthenticationNotifier>();

SharedPreferenceService get sharedPrefsService => GetIt.I.get<SharedPreferenceService>();

EnvironmentConfig get environmentConfig => GetIt.I.get<EnvironmentConfig>();

AuthenticationRepository get authenticationRepository => GetIt.I.get<AuthenticationRepository>();
ApiariesRepository get apiariesRepository => GetIt.I.get<ApiariesRepository>();
GoRouter get appRouter => GetIt.I.get<GoRouter>();
