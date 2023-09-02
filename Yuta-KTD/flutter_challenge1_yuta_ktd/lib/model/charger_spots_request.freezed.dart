// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charger_spots_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChargerSpotsRequest _$ChargerSpotsRequestFromJson(Map<String, dynamic> json) {
  return _ChargerSpotsRequest.fromJson(json);
}

/// @nodoc
mixin _$ChargerSpotsRequest {
  @JsonKey(name: 'sw_lat')
  String? get swLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'sw_lng')
  String? get swLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'ne_lat')
  String? get neLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'ne_lng')
  String? get neLng => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  String? get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargerSpotsRequestCopyWith<ChargerSpotsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerSpotsRequestCopyWith<$Res> {
  factory $ChargerSpotsRequestCopyWith(
          ChargerSpotsRequest value, $Res Function(ChargerSpotsRequest) then) =
      _$ChargerSpotsRequestCopyWithImpl<$Res, ChargerSpotsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sw_lat') String? swLat,
      @JsonKey(name: 'sw_lng') String? swLng,
      @JsonKey(name: 'ne_lat') String? neLat,
      @JsonKey(name: 'ne_lng') String? neLng,
      String? uuid,
      String? fields});
}

/// @nodoc
class _$ChargerSpotsRequestCopyWithImpl<$Res, $Val extends ChargerSpotsRequest>
    implements $ChargerSpotsRequestCopyWith<$Res> {
  _$ChargerSpotsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swLat = freezed,
    Object? swLng = freezed,
    Object? neLat = freezed,
    Object? neLng = freezed,
    Object? uuid = freezed,
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      swLat: freezed == swLat
          ? _value.swLat
          : swLat // ignore: cast_nullable_to_non_nullable
              as String?,
      swLng: freezed == swLng
          ? _value.swLng
          : swLng // ignore: cast_nullable_to_non_nullable
              as String?,
      neLat: freezed == neLat
          ? _value.neLat
          : neLat // ignore: cast_nullable_to_non_nullable
              as String?,
      neLng: freezed == neLng
          ? _value.neLng
          : neLng // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChargerSpotsRequestCopyWith<$Res>
    implements $ChargerSpotsRequestCopyWith<$Res> {
  factory _$$_ChargerSpotsRequestCopyWith(_$_ChargerSpotsRequest value,
          $Res Function(_$_ChargerSpotsRequest) then) =
      __$$_ChargerSpotsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sw_lat') String? swLat,
      @JsonKey(name: 'sw_lng') String? swLng,
      @JsonKey(name: 'ne_lat') String? neLat,
      @JsonKey(name: 'ne_lng') String? neLng,
      String? uuid,
      String? fields});
}

/// @nodoc
class __$$_ChargerSpotsRequestCopyWithImpl<$Res>
    extends _$ChargerSpotsRequestCopyWithImpl<$Res, _$_ChargerSpotsRequest>
    implements _$$_ChargerSpotsRequestCopyWith<$Res> {
  __$$_ChargerSpotsRequestCopyWithImpl(_$_ChargerSpotsRequest _value,
      $Res Function(_$_ChargerSpotsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swLat = freezed,
    Object? swLng = freezed,
    Object? neLat = freezed,
    Object? neLng = freezed,
    Object? uuid = freezed,
    Object? fields = freezed,
  }) {
    return _then(_$_ChargerSpotsRequest(
      swLat: freezed == swLat
          ? _value.swLat
          : swLat // ignore: cast_nullable_to_non_nullable
              as String?,
      swLng: freezed == swLng
          ? _value.swLng
          : swLng // ignore: cast_nullable_to_non_nullable
              as String?,
      neLat: freezed == neLat
          ? _value.neLat
          : neLat // ignore: cast_nullable_to_non_nullable
              as String?,
      neLng: freezed == neLng
          ? _value.neLng
          : neLng // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChargerSpotsRequest implements _ChargerSpotsRequest {
  const _$_ChargerSpotsRequest(
      {@JsonKey(name: 'sw_lat') this.swLat,
      @JsonKey(name: 'sw_lng') this.swLng,
      @JsonKey(name: 'ne_lat') this.neLat,
      @JsonKey(name: 'ne_lng') this.neLng,
      this.uuid,
      this.fields});

  factory _$_ChargerSpotsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ChargerSpotsRequestFromJson(json);

  @override
  @JsonKey(name: 'sw_lat')
  final String? swLat;
  @override
  @JsonKey(name: 'sw_lng')
  final String? swLng;
  @override
  @JsonKey(name: 'ne_lat')
  final String? neLat;
  @override
  @JsonKey(name: 'ne_lng')
  final String? neLng;
  @override
  final String? uuid;
  @override
  final String? fields;

  @override
  String toString() {
    return 'ChargerSpotsRequest(swLat: $swLat, swLng: $swLng, neLat: $neLat, neLng: $neLng, uuid: $uuid, fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChargerSpotsRequest &&
            (identical(other.swLat, swLat) || other.swLat == swLat) &&
            (identical(other.swLng, swLng) || other.swLng == swLng) &&
            (identical(other.neLat, neLat) || other.neLat == neLat) &&
            (identical(other.neLng, neLng) || other.neLng == neLng) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, swLat, swLng, neLat, neLng, uuid, fields);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChargerSpotsRequestCopyWith<_$_ChargerSpotsRequest> get copyWith =>
      __$$_ChargerSpotsRequestCopyWithImpl<_$_ChargerSpotsRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChargerSpotsRequestToJson(
      this,
    );
  }
}

abstract class _ChargerSpotsRequest implements ChargerSpotsRequest {
  const factory _ChargerSpotsRequest(
      {@JsonKey(name: 'sw_lat') final String? swLat,
      @JsonKey(name: 'sw_lng') final String? swLng,
      @JsonKey(name: 'ne_lat') final String? neLat,
      @JsonKey(name: 'ne_lng') final String? neLng,
      final String? uuid,
      final String? fields}) = _$_ChargerSpotsRequest;

  factory _ChargerSpotsRequest.fromJson(Map<String, dynamic> json) =
      _$_ChargerSpotsRequest.fromJson;

  @override
  @JsonKey(name: 'sw_lat')
  String? get swLat;
  @override
  @JsonKey(name: 'sw_lng')
  String? get swLng;
  @override
  @JsonKey(name: 'ne_lat')
  String? get neLat;
  @override
  @JsonKey(name: 'ne_lng')
  String? get neLng;
  @override
  String? get uuid;
  @override
  String? get fields;
  @override
  @JsonKey(ignore: true)
  _$$_ChargerSpotsRequestCopyWith<_$_ChargerSpotsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
