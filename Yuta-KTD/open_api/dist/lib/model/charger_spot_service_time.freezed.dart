// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charger_spot_service_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChargerSpotServiceTime _$ChargerSpotServiceTimeFromJson(
    Map<String, dynamic> json) {
  return _ChargerSpotServiceTime.fromJson(json);
}

/// @nodoc
mixin _$ChargerSpotServiceTime {
  BusinessDay get businessDay => throw _privateConstructorUsedError;
  Day get day => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  bool get today => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargerSpotServiceTimeCopyWith<ChargerSpotServiceTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerSpotServiceTimeCopyWith<$Res> {
  factory $ChargerSpotServiceTimeCopyWith(ChargerSpotServiceTime value,
          $Res Function(ChargerSpotServiceTime) then) =
      _$ChargerSpotServiceTimeCopyWithImpl<$Res, ChargerSpotServiceTime>;
  @useResult
  $Res call(
      {BusinessDay businessDay,
      Day day,
      String? startTime,
      String? endTime,
      bool today});
}

/// @nodoc
class _$ChargerSpotServiceTimeCopyWithImpl<$Res,
        $Val extends ChargerSpotServiceTime>
    implements $ChargerSpotServiceTimeCopyWith<$Res> {
  _$ChargerSpotServiceTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessDay = null,
    Object? day = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? today = null,
  }) {
    return _then(_value.copyWith(
      businessDay: null == businessDay
          ? _value.businessDay
          : businessDay // ignore: cast_nullable_to_non_nullable
              as BusinessDay,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      today: null == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChargerSpotServiceTimeCopyWith<$Res>
    implements $ChargerSpotServiceTimeCopyWith<$Res> {
  factory _$$_ChargerSpotServiceTimeCopyWith(_$_ChargerSpotServiceTime value,
          $Res Function(_$_ChargerSpotServiceTime) then) =
      __$$_ChargerSpotServiceTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BusinessDay businessDay,
      Day day,
      String? startTime,
      String? endTime,
      bool today});
}

/// @nodoc
class __$$_ChargerSpotServiceTimeCopyWithImpl<$Res>
    extends _$ChargerSpotServiceTimeCopyWithImpl<$Res,
        _$_ChargerSpotServiceTime>
    implements _$$_ChargerSpotServiceTimeCopyWith<$Res> {
  __$$_ChargerSpotServiceTimeCopyWithImpl(_$_ChargerSpotServiceTime _value,
      $Res Function(_$_ChargerSpotServiceTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessDay = null,
    Object? day = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? today = null,
  }) {
    return _then(_$_ChargerSpotServiceTime(
      businessDay: null == businessDay
          ? _value.businessDay
          : businessDay // ignore: cast_nullable_to_non_nullable
              as BusinessDay,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      today: null == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ChargerSpotServiceTime implements _ChargerSpotServiceTime {
  const _$_ChargerSpotServiceTime(
      {required this.businessDay,
      required this.day,
      this.startTime,
      this.endTime,
      required this.today});

  factory _$_ChargerSpotServiceTime.fromJson(Map<String, dynamic> json) =>
      _$$_ChargerSpotServiceTimeFromJson(json);

  @override
  final BusinessDay businessDay;
  @override
  final Day day;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final bool today;

  @override
  String toString() {
    return 'ChargerSpotServiceTime(businessDay: $businessDay, day: $day, startTime: $startTime, endTime: $endTime, today: $today)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChargerSpotServiceTime &&
            (identical(other.businessDay, businessDay) ||
                other.businessDay == businessDay) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.today, today) || other.today == today));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, businessDay, day, startTime, endTime, today);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChargerSpotServiceTimeCopyWith<_$_ChargerSpotServiceTime> get copyWith =>
      __$$_ChargerSpotServiceTimeCopyWithImpl<_$_ChargerSpotServiceTime>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChargerSpotServiceTimeToJson(
      this,
    );
  }
}

abstract class _ChargerSpotServiceTime implements ChargerSpotServiceTime {
  const factory _ChargerSpotServiceTime(
      {required final BusinessDay businessDay,
      required final Day day,
      final String? startTime,
      final String? endTime,
      required final bool today}) = _$_ChargerSpotServiceTime;

  factory _ChargerSpotServiceTime.fromJson(Map<String, dynamic> json) =
      _$_ChargerSpotServiceTime.fromJson;

  @override
  BusinessDay get businessDay;
  @override
  Day get day;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  bool get today;
  @override
  @JsonKey(ignore: true)
  _$$_ChargerSpotServiceTimeCopyWith<_$_ChargerSpotServiceTime> get copyWith =>
      throw _privateConstructorUsedError;
}
