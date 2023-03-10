// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apiary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiaryModel _$ApiaryModelFromJson(Map<String, dynamic> json) {
  return _ApiaryModel.fromJson(json);
}

/// @nodoc
mixin _$ApiaryModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get route => throw _privateConstructorUsedError;
  String? get streetNumber => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_apiary_list_url')
  String? get thumbnailApiaryListUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_id')
  int? get imageId => throw _privateConstructorUsedError;
  WeightsModel? get weights => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiaryModelCopyWith<ApiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiaryModelCopyWith<$Res> {
  factory $ApiaryModelCopyWith(
          ApiaryModel value, $Res Function(ApiaryModel) then) =
      _$ApiaryModelCopyWithImpl<$Res, ApiaryModel>;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'thumbnail_apiary_list_url')
          String? thumbnailApiaryListUrl,
      String? description,
      @JsonKey(name: 'image_id')
          int? imageId,
      WeightsModel? weights});

  $WeightsModelCopyWith<$Res>? get weights;
}

/// @nodoc
class _$ApiaryModelCopyWithImpl<$Res, $Val extends ApiaryModel>
    implements $ApiaryModelCopyWith<$Res> {
  _$ApiaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? route = freezed,
    Object? streetNumber = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? province = freezed,
    Object? region = freezed,
    Object? thumbnailApiaryListUrl = freezed,
    Object? description = freezed,
    Object? imageId = freezed,
    Object? weights = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailApiaryListUrl: freezed == thumbnailApiaryListUrl
          ? _value.thumbnailApiaryListUrl
          : thumbnailApiaryListUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int?,
      weights: freezed == weights
          ? _value.weights
          : weights // ignore: cast_nullable_to_non_nullable
              as WeightsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeightsModelCopyWith<$Res>? get weights {
    if (_value.weights == null) {
      return null;
    }

    return $WeightsModelCopyWith<$Res>(_value.weights!, (value) {
      return _then(_value.copyWith(weights: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiaryModelCopyWith<$Res>
    implements $ApiaryModelCopyWith<$Res> {
  factory _$$_ApiaryModelCopyWith(
          _$_ApiaryModel value, $Res Function(_$_ApiaryModel) then) =
      __$$_ApiaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'thumbnail_apiary_list_url')
          String? thumbnailApiaryListUrl,
      String? description,
      @JsonKey(name: 'image_id')
          int? imageId,
      WeightsModel? weights});

  @override
  $WeightsModelCopyWith<$Res>? get weights;
}

/// @nodoc
class __$$_ApiaryModelCopyWithImpl<$Res>
    extends _$ApiaryModelCopyWithImpl<$Res, _$_ApiaryModel>
    implements _$$_ApiaryModelCopyWith<$Res> {
  __$$_ApiaryModelCopyWithImpl(
      _$_ApiaryModel _value, $Res Function(_$_ApiaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? route = freezed,
    Object? streetNumber = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? province = freezed,
    Object? region = freezed,
    Object? thumbnailApiaryListUrl = freezed,
    Object? description = freezed,
    Object? imageId = freezed,
    Object? weights = freezed,
  }) {
    return _then(_$_ApiaryModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailApiaryListUrl: freezed == thumbnailApiaryListUrl
          ? _value.thumbnailApiaryListUrl
          : thumbnailApiaryListUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int?,
      weights: freezed == weights
          ? _value.weights
          : weights // ignore: cast_nullable_to_non_nullable
              as WeightsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiaryModel extends _ApiaryModel {
  const _$_ApiaryModel(
      {this.id,
      this.name,
      this.color,
      this.latitude,
      this.longitude,
      this.route,
      this.streetNumber,
      this.city,
      this.postalCode,
      this.country,
      this.province,
      this.region,
      @JsonKey(name: 'thumbnail_apiary_list_url') this.thumbnailApiaryListUrl,
      this.description,
      @JsonKey(name: 'image_id') this.imageId,
      this.weights})
      : super._();

  factory _$_ApiaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiaryModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? color;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? route;
  @override
  final String? streetNumber;
  @override
  final String? city;
  @override
  final String? postalCode;
  @override
  final String? country;
  @override
  final String? province;
  @override
  final String? region;
  @override
  @JsonKey(name: 'thumbnail_apiary_list_url')
  final String? thumbnailApiaryListUrl;
  @override
  final String? description;
  @override
  @JsonKey(name: 'image_id')
  final int? imageId;
  @override
  final WeightsModel? weights;

  @override
  String toString() {
    return 'ApiaryModel(id: $id, name: $name, color: $color, latitude: $latitude, longitude: $longitude, route: $route, streetNumber: $streetNumber, city: $city, postalCode: $postalCode, country: $country, province: $province, region: $region, thumbnailApiaryListUrl: $thumbnailApiaryListUrl, description: $description, imageId: $imageId, weights: $weights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiaryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.streetNumber, streetNumber) ||
                other.streetNumber == streetNumber) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.thumbnailApiaryListUrl, thumbnailApiaryListUrl) ||
                other.thumbnailApiaryListUrl == thumbnailApiaryListUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.weights, weights) || other.weights == weights));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      color,
      latitude,
      longitude,
      route,
      streetNumber,
      city,
      postalCode,
      country,
      province,
      region,
      thumbnailApiaryListUrl,
      description,
      imageId,
      weights);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiaryModelCopyWith<_$_ApiaryModel> get copyWith =>
      __$$_ApiaryModelCopyWithImpl<_$_ApiaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiaryModelToJson(
      this,
    );
  }
}

abstract class _ApiaryModel extends ApiaryModel {
  const factory _ApiaryModel(
      {final int? id,
      final String? name,
      final String? color,
      final double? latitude,
      final double? longitude,
      final String? route,
      final String? streetNumber,
      final String? city,
      final String? postalCode,
      final String? country,
      final String? province,
      final String? region,
      @JsonKey(name: 'thumbnail_apiary_list_url')
          final String? thumbnailApiaryListUrl,
      final String? description,
      @JsonKey(name: 'image_id')
          final int? imageId,
      final WeightsModel? weights}) = _$_ApiaryModel;
  const _ApiaryModel._() : super._();

  factory _ApiaryModel.fromJson(Map<String, dynamic> json) =
      _$_ApiaryModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get color;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get route;
  @override
  String? get streetNumber;
  @override
  String? get city;
  @override
  String? get postalCode;
  @override
  String? get country;
  @override
  String? get province;
  @override
  String? get region;
  @override
  @JsonKey(name: 'thumbnail_apiary_list_url')
  String? get thumbnailApiaryListUrl;
  @override
  String? get description;
  @override
  @JsonKey(name: 'image_id')
  int? get imageId;
  @override
  WeightsModel? get weights;
  @override
  @JsonKey(ignore: true)
  _$$_ApiaryModelCopyWith<_$_ApiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WeightsModel _$WeightsModelFromJson(Map<String, dynamic> json) {
  return _Weights.fromJson(json);
}

/// @nodoc
mixin _$WeightsModel {
  Map<String, dynamic>? get daily => throw _privateConstructorUsedError;
  Map<String, dynamic>? get delta => throw _privateConstructorUsedError;
  int? get hivesCount => throw _privateConstructorUsedError;
  int? get devicesCount => throw _privateConstructorUsedError;
  String? get morningHour => throw _privateConstructorUsedError;
  String? get eveningHour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightsModelCopyWith<WeightsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightsModelCopyWith<$Res> {
  factory $WeightsModelCopyWith(
          WeightsModel value, $Res Function(WeightsModel) then) =
      _$WeightsModelCopyWithImpl<$Res, WeightsModel>;
  @useResult
  $Res call(
      {Map<String, dynamic>? daily,
      Map<String, dynamic>? delta,
      int? hivesCount,
      int? devicesCount,
      String? morningHour,
      String? eveningHour});
}

/// @nodoc
class _$WeightsModelCopyWithImpl<$Res, $Val extends WeightsModel>
    implements $WeightsModelCopyWith<$Res> {
  _$WeightsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = freezed,
    Object? delta = freezed,
    Object? hivesCount = freezed,
    Object? devicesCount = freezed,
    Object? morningHour = freezed,
    Object? eveningHour = freezed,
  }) {
    return _then(_value.copyWith(
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      delta: freezed == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      hivesCount: freezed == hivesCount
          ? _value.hivesCount
          : hivesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      devicesCount: freezed == devicesCount
          ? _value.devicesCount
          : devicesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      morningHour: freezed == morningHour
          ? _value.morningHour
          : morningHour // ignore: cast_nullable_to_non_nullable
              as String?,
      eveningHour: freezed == eveningHour
          ? _value.eveningHour
          : eveningHour // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeightsCopyWith<$Res>
    implements $WeightsModelCopyWith<$Res> {
  factory _$$_WeightsCopyWith(
          _$_Weights value, $Res Function(_$_Weights) then) =
      __$$_WeightsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? daily,
      Map<String, dynamic>? delta,
      int? hivesCount,
      int? devicesCount,
      String? morningHour,
      String? eveningHour});
}

/// @nodoc
class __$$_WeightsCopyWithImpl<$Res>
    extends _$WeightsModelCopyWithImpl<$Res, _$_Weights>
    implements _$$_WeightsCopyWith<$Res> {
  __$$_WeightsCopyWithImpl(_$_Weights _value, $Res Function(_$_Weights) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = freezed,
    Object? delta = freezed,
    Object? hivesCount = freezed,
    Object? devicesCount = freezed,
    Object? morningHour = freezed,
    Object? eveningHour = freezed,
  }) {
    return _then(_$_Weights(
      daily: freezed == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      delta: freezed == delta
          ? _value._delta
          : delta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      hivesCount: freezed == hivesCount
          ? _value.hivesCount
          : hivesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      devicesCount: freezed == devicesCount
          ? _value.devicesCount
          : devicesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      morningHour: freezed == morningHour
          ? _value.morningHour
          : morningHour // ignore: cast_nullable_to_non_nullable
              as String?,
      eveningHour: freezed == eveningHour
          ? _value.eveningHour
          : eveningHour // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weights implements _Weights {
  const _$_Weights(
      {final Map<String, dynamic>? daily,
      final Map<String, dynamic>? delta,
      this.hivesCount,
      this.devicesCount,
      this.morningHour,
      this.eveningHour})
      : _daily = daily,
        _delta = delta;

  factory _$_Weights.fromJson(Map<String, dynamic> json) =>
      _$$_WeightsFromJson(json);

  final Map<String, dynamic>? _daily;
  @override
  Map<String, dynamic>? get daily {
    final value = _daily;
    if (value == null) return null;
    if (_daily is EqualUnmodifiableMapView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _delta;
  @override
  Map<String, dynamic>? get delta {
    final value = _delta;
    if (value == null) return null;
    if (_delta is EqualUnmodifiableMapView) return _delta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? hivesCount;
  @override
  final int? devicesCount;
  @override
  final String? morningHour;
  @override
  final String? eveningHour;

  @override
  String toString() {
    return 'WeightsModel(daily: $daily, delta: $delta, hivesCount: $hivesCount, devicesCount: $devicesCount, morningHour: $morningHour, eveningHour: $eveningHour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weights &&
            const DeepCollectionEquality().equals(other._daily, _daily) &&
            const DeepCollectionEquality().equals(other._delta, _delta) &&
            (identical(other.hivesCount, hivesCount) ||
                other.hivesCount == hivesCount) &&
            (identical(other.devicesCount, devicesCount) ||
                other.devicesCount == devicesCount) &&
            (identical(other.morningHour, morningHour) ||
                other.morningHour == morningHour) &&
            (identical(other.eveningHour, eveningHour) ||
                other.eveningHour == eveningHour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_daily),
      const DeepCollectionEquality().hash(_delta),
      hivesCount,
      devicesCount,
      morningHour,
      eveningHour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeightsCopyWith<_$_Weights> get copyWith =>
      __$$_WeightsCopyWithImpl<_$_Weights>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeightsToJson(
      this,
    );
  }
}

abstract class _Weights implements WeightsModel {
  const factory _Weights(
      {final Map<String, dynamic>? daily,
      final Map<String, dynamic>? delta,
      final int? hivesCount,
      final int? devicesCount,
      final String? morningHour,
      final String? eveningHour}) = _$_Weights;

  factory _Weights.fromJson(Map<String, dynamic> json) = _$_Weights.fromJson;

  @override
  Map<String, dynamic>? get daily;
  @override
  Map<String, dynamic>? get delta;
  @override
  int? get hivesCount;
  @override
  int? get devicesCount;
  @override
  String? get morningHour;
  @override
  String? get eveningHour;
  @override
  @JsonKey(ignore: true)
  _$$_WeightsCopyWith<_$_Weights> get copyWith =>
      throw _privateConstructorUsedError;
}
