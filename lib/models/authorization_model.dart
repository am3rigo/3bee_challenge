import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_model.freezed.dart';
part 'authorization_model.g.dart';

@freezed
class AuthorizationModel with _$AuthorizationModel {
  const factory AuthorizationModel({
    required String access,
    required String refresh,
  }) = _AuthorizationModel;

  factory AuthorizationModel.fromJson(Map<String, dynamic> json) => _$AuthorizationModelFromJson(json);
}
