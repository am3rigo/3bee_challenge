// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorizationModel _$AuthorizationModelFromJson(Map<String, dynamic> json) {
  return _AuthorizationModel.fromJson(json);
}

/// @nodoc
mixin _$AuthorizationModel {
  String get access => throw _privateConstructorUsedError;
  String get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizationModelCopyWith<AuthorizationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationModelCopyWith<$Res> {
  factory $AuthorizationModelCopyWith(
          AuthorizationModel value, $Res Function(AuthorizationModel) then) =
      _$AuthorizationModelCopyWithImpl<$Res, AuthorizationModel>;
  @useResult
  $Res call({String access, String refresh});
}

/// @nodoc
class _$AuthorizationModelCopyWithImpl<$Res, $Val extends AuthorizationModel>
    implements $AuthorizationModelCopyWith<$Res> {
  _$AuthorizationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorizationModelCopyWith<$Res>
    implements $AuthorizationModelCopyWith<$Res> {
  factory _$$_AuthorizationModelCopyWith(_$_AuthorizationModel value,
          $Res Function(_$_AuthorizationModel) then) =
      __$$_AuthorizationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access, String refresh});
}

/// @nodoc
class __$$_AuthorizationModelCopyWithImpl<$Res>
    extends _$AuthorizationModelCopyWithImpl<$Res, _$_AuthorizationModel>
    implements _$$_AuthorizationModelCopyWith<$Res> {
  __$$_AuthorizationModelCopyWithImpl(
      _$_AuthorizationModel _value, $Res Function(_$_AuthorizationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_$_AuthorizationModel(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorizationModel implements _AuthorizationModel {
  const _$_AuthorizationModel({required this.access, required this.refresh});

  factory _$_AuthorizationModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorizationModelFromJson(json);

  @override
  final String access;
  @override
  final String refresh;

  @override
  String toString() {
    return 'AuthorizationModel(access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizationModel &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizationModelCopyWith<_$_AuthorizationModel> get copyWith =>
      __$$_AuthorizationModelCopyWithImpl<_$_AuthorizationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorizationModelToJson(
      this,
    );
  }
}

abstract class _AuthorizationModel implements AuthorizationModel {
  const factory _AuthorizationModel(
      {required final String access,
      required final String refresh}) = _$_AuthorizationModel;

  factory _AuthorizationModel.fromJson(Map<String, dynamic> json) =
      _$_AuthorizationModel.fromJson;

  @override
  String get access;
  @override
  String get refresh;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorizationModelCopyWith<_$_AuthorizationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
