// To parse this JSON data, do
//
//     final apiaryModel = apiaryModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'apiary_model.freezed.dart';
part 'apiary_model.g.dart';

@freezed
class ApiaryModel with _$ApiaryModel {
  const ApiaryModel._();

  const factory ApiaryModel({
    int? id,
    String? name,
    String? color,
    double? latitude,
    double? longitude,
    String? route,
    String? streetNumber,
    String? city,
    String? postalCode,
    String? country,
    String? province,
    String? region,
    @JsonKey(name: 'thumbnail_apiary_list_url') String? thumbnailApiaryListUrl,
    String? description,
    @JsonKey(name: 'image_id') int? imageId,
    WeightsModel? weights,
  }) = _ApiaryModel;

  MapEntry? get _lastUpdateEntry {
    try {
      final entries = weights?.delta?.entries;

      if (entries != null) {
        ///get entries different of "Main"
        final hiveEntries = entries.firstWhere((element) => element.key != 'mean');

        final hiveUpdatesEntries = hiveEntries.value as Map<String, dynamic>;

        MapEntry? updateModelMoreRecent;

        /// iterate over hiveUpdatesEntries to get the most recent update
        for (var element in hiveUpdatesEntries.entries) {
          final secondsFromEpoch = double.tryParse(element.key);
          if (secondsFromEpoch != null && element.value != null) {
            if (updateModelMoreRecent == null || secondsFromEpoch > double.tryParse(updateModelMoreRecent.key)!) {
              updateModelMoreRecent = element;
            }
          }
        }

        return updateModelMoreRecent;
      }

      return null;
    } catch (e) {
      return null;
    }
  }

  int? get lastUpdateAt {
    if (_lastUpdateEntry?.key != null) {
      return int.tryParse(_lastUpdateEntry!.key);
    }
    return null;
  }

  double? get lastWeight {
    if (_lastUpdateEntry?.value != null) {
      return double.tryParse(_lastUpdateEntry!.value.toString())!;
    }
    return null;
  }

  factory ApiaryModel.fromJson(Map<String, dynamic> json) => _$ApiaryModelFromJson(json);
}

@freezed
class WeightsModel with _$WeightsModel {
  const factory WeightsModel({
    Map<String, dynamic>? daily,
    Map<String, dynamic>? delta,
    int? hivesCount,
    int? devicesCount,
    String? morningHour,
    String? eveningHour,
  }) = _Weights;

  factory WeightsModel.fromJson(Map<String, dynamic> json) => _$WeightsModelFromJson(json);
}
