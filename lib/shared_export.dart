import 'package:get_it/get_it.dart';
import 'package:threebee_challenge/services/shared_preferences_service.dart';

export 'package:threebee_challenge/models/models.dart';
export 'package:threebee_challenge/repositories/repositories.dart';

SharedPreferenceService get sharedPrefsService => GetIt.I.get<SharedPreferenceService>();
