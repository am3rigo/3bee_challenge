// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiaryModel _$$_ApiaryModelFromJson(Map<String, dynamic> json) =>
    _$_ApiaryModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      color: json['color'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      route: json['route'] as String?,
      streetNumber: json['streetNumber'] as String?,
      city: json['city'] as String?,
      postalCode: json['postalCode'] as String?,
      country: json['country'] as String?,
      province: json['province'] as String?,
      region: json['region'] as String?,
      thumbnailApiaryListUrl: json['thumbnail_apiary_list_url'] as String?,
      description: json['description'] as String?,
      imageId: json['image_id'] as int?,
      weights: json['weights'] == null
          ? null
          : WeightsModel.fromJson(json['weights'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ApiaryModelToJson(_$_ApiaryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'route': instance.route,
      'streetNumber': instance.streetNumber,
      'city': instance.city,
      'postalCode': instance.postalCode,
      'country': instance.country,
      'province': instance.province,
      'region': instance.region,
      'thumbnail_apiary_list_url': instance.thumbnailApiaryListUrl,
      'description': instance.description,
      'image_id': instance.imageId,
      'weights': instance.weights,
    };

_$_Weights _$$_WeightsFromJson(Map<String, dynamic> json) => _$_Weights(
      daily: json['daily'] as Map<String, dynamic>?,
      delta: json['delta'] as Map<String, dynamic>?,
      hivesCount: json['hivesCount'] as int?,
      devicesCount: json['devicesCount'] as int?,
      morningHour: json['morningHour'] as String?,
      eveningHour: json['eveningHour'] as String?,
    );

Map<String, dynamic> _$$_WeightsToJson(_$_Weights instance) =>
    <String, dynamic>{
      'daily': instance.daily,
      'delta': instance.delta,
      'hivesCount': instance.hivesCount,
      'devicesCount': instance.devicesCount,
      'morningHour': instance.morningHour,
      'eveningHour': instance.eveningHour,
    };
