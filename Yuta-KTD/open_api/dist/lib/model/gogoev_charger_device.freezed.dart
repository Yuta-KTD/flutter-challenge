// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gogoev_charger_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GogoevChargerDevice _$GogoevChargerDeviceFromJson(Map<String, dynamic> json) {
  return _GogoevChargerDevice.fromJson(json);
}

/// @nodoc
mixin _$GogoevChargerDevice {
  List<String> get deviceTypes => throw _privateConstructorUsedError;
  String? get power => throw _privateConstructorUsedError;
  num get number => throw _privateConstructorUsedError;
  String get fee => throw _privateConstructorUsedError;
  List<String> get authenticationNetworks => throw _privateConstructorUsedError;
  List<String> get authenticationApps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GogoevChargerDeviceCopyWith<GogoevChargerDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GogoevChargerDeviceCopyWith<$Res> {
  factory $GogoevChargerDeviceCopyWith(
          GogoevChargerDevice value, $Res Function(GogoevChargerDevice) then) =
      _$GogoevChargerDeviceCopyWithImpl<$Res, GogoevChargerDevice>;
  @useResult
  $Res call(
      {List<String> deviceTypes,
      String? power,
      num number,
      String fee,
      List<String> authenticationNetworks,
      List<String> authenticationApps});
}

/// @nodoc
class _$GogoevChargerDeviceCopyWithImpl<$Res, $Val extends GogoevChargerDevice>
    implements $GogoevChargerDeviceCopyWith<$Res> {
  _$GogoevChargerDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceTypes = null,
    Object? power = freezed,
    Object? number = null,
    Object? fee = null,
    Object? authenticationNetworks = null,
    Object? authenticationApps = null,
  }) {
    return _then(_value.copyWith(
      deviceTypes: null == deviceTypes
          ? _value.deviceTypes
          : deviceTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as String?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as num,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationNetworks: null == authenticationNetworks
          ? _value.authenticationNetworks
          : authenticationNetworks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authenticationApps: null == authenticationApps
          ? _value.authenticationApps
          : authenticationApps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GogoevChargerDeviceCopyWith<$Res>
    implements $GogoevChargerDeviceCopyWith<$Res> {
  factory _$$_GogoevChargerDeviceCopyWith(_$_GogoevChargerDevice value,
          $Res Function(_$_GogoevChargerDevice) then) =
      __$$_GogoevChargerDeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> deviceTypes,
      String? power,
      num number,
      String fee,
      List<String> authenticationNetworks,
      List<String> authenticationApps});
}

/// @nodoc
class __$$_GogoevChargerDeviceCopyWithImpl<$Res>
    extends _$GogoevChargerDeviceCopyWithImpl<$Res, _$_GogoevChargerDevice>
    implements _$$_GogoevChargerDeviceCopyWith<$Res> {
  __$$_GogoevChargerDeviceCopyWithImpl(_$_GogoevChargerDevice _value,
      $Res Function(_$_GogoevChargerDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceTypes = null,
    Object? power = freezed,
    Object? number = null,
    Object? fee = null,
    Object? authenticationNetworks = null,
    Object? authenticationApps = null,
  }) {
    return _then(_$_GogoevChargerDevice(
      deviceTypes: null == deviceTypes
          ? _value._deviceTypes
          : deviceTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as String?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as num,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationNetworks: null == authenticationNetworks
          ? _value._authenticationNetworks
          : authenticationNetworks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authenticationApps: null == authenticationApps
          ? _value._authenticationApps
          : authenticationApps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GogoevChargerDevice implements _GogoevChargerDevice {
  const _$_GogoevChargerDevice(
      {final List<String> deviceTypes = const [],
      this.power,
      required this.number,
      required this.fee,
      final List<String> authenticationNetworks = const [],
      final List<String> authenticationApps = const []})
      : _deviceTypes = deviceTypes,
        _authenticationNetworks = authenticationNetworks,
        _authenticationApps = authenticationApps;

  factory _$_GogoevChargerDevice.fromJson(Map<String, dynamic> json) =>
      _$$_GogoevChargerDeviceFromJson(json);

  final List<String> _deviceTypes;
  @override
  @JsonKey()
  List<String> get deviceTypes {
    if (_deviceTypes is EqualUnmodifiableListView) return _deviceTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deviceTypes);
  }

  @override
  final String? power;
  @override
  final num number;
  @override
  final String fee;
  final List<String> _authenticationNetworks;
  @override
  @JsonKey()
  List<String> get authenticationNetworks {
    if (_authenticationNetworks is EqualUnmodifiableListView)
      return _authenticationNetworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authenticationNetworks);
  }

  final List<String> _authenticationApps;
  @override
  @JsonKey()
  List<String> get authenticationApps {
    if (_authenticationApps is EqualUnmodifiableListView)
      return _authenticationApps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authenticationApps);
  }

  @override
  String toString() {
    return 'GogoevChargerDevice(deviceTypes: $deviceTypes, power: $power, number: $number, fee: $fee, authenticationNetworks: $authenticationNetworks, authenticationApps: $authenticationApps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GogoevChargerDevice &&
            const DeepCollectionEquality()
                .equals(other._deviceTypes, _deviceTypes) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            const DeepCollectionEquality().equals(
                other._authenticationNetworks, _authenticationNetworks) &&
            const DeepCollectionEquality()
                .equals(other._authenticationApps, _authenticationApps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_deviceTypes),
      power,
      number,
      fee,
      const DeepCollectionEquality().hash(_authenticationNetworks),
      const DeepCollectionEquality().hash(_authenticationApps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GogoevChargerDeviceCopyWith<_$_GogoevChargerDevice> get copyWith =>
      __$$_GogoevChargerDeviceCopyWithImpl<_$_GogoevChargerDevice>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GogoevChargerDeviceToJson(
      this,
    );
  }
}

abstract class _GogoevChargerDevice implements GogoevChargerDevice {
  const factory _GogoevChargerDevice(
      {final List<String> deviceTypes,
      final String? power,
      required final num number,
      required final String fee,
      final List<String> authenticationNetworks,
      final List<String> authenticationApps}) = _$_GogoevChargerDevice;

  factory _GogoevChargerDevice.fromJson(Map<String, dynamic> json) =
      _$_GogoevChargerDevice.fromJson;

  @override
  List<String> get deviceTypes;
  @override
  String? get power;
  @override
  num get number;
  @override
  String get fee;
  @override
  List<String> get authenticationNetworks;
  @override
  List<String> get authenticationApps;
  @override
  @JsonKey(ignore: true)
  _$$_GogoevChargerDeviceCopyWith<_$_GogoevChargerDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
