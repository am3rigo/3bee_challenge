import 'package:get_it/get_it.dart';
import 'package:threebee_challenge/repositories/repositories.dart';
import 'package:threebee_challenge/services/shared_preferences_service.dart';

export 'package:threebee_challenge/models/models.dart';
export 'package:threebee_challenge/repositories/repositories.dart';
export 'package:flutter_bloc/flutter_bloc.dart';

SharedPreferenceService get sharedPrefsService => GetIt.I.get<SharedPreferenceService>();

AuthenticationRepository get authenticationRepository => GetIt.I.get<AuthenticationRepository>();
ApiariesRepository get apiariesRepository => GetIt.I.get<ApiariesRepository>();
