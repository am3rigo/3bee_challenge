// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiaryModel _$$_ApiaryModelFromJson(Map<String, dynamic> json) =>
    _$_ApiaryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      color: json['color'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      route: json['route'] as String,
      streetNumber: json['streetNumber'] as String,
      city: json['city'] as String,
      postalCode: json['postalCode'] as String,
      country: json['country'] as String,
      province: json['province'] as String,
      region: json['region'] as String,
      thumbnailApiaryListUrl: json['thumbnailApiaryListUrl'] as String,
      description: json['description'] as String,
      imageId: json['imageId'] as String,
      weights: json['weights'] as String,
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
      'thumbnailApiaryListUrl': instance.thumbnailApiaryListUrl,
      'description': instance.description,
      'imageId': instance.imageId,
      'weights': instance.weights,
    };
