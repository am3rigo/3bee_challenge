// To parse this JSON data, do
//
//     final apiaryModel = apiaryModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'apiary_model.freezed.dart';
part 'apiary_model.g.dart';

@freezed
class ApiaryModel with _$ApiaryModel {
  const factory ApiaryModel({
    required int id,
    required String name,
    required String color,
    required String latitude,
    required String longitude,
    required String route,
    required String streetNumber,
    required String city,
    required String postalCode,
    required String country,
    required String province,
    required String region,
    required String thumbnailApiaryListUrl,
    required String description,
    required String imageId,
    required String weights,
  }) = _ApiaryModel;

  factory ApiaryModel.fromJson(Map<String, dynamic> json) => _$ApiaryModelFromJson(json);
}
