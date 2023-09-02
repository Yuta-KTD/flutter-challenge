// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  String get price => throw _privateConstructorUsedError;
  String? get price3kw => throw _privateConstructorUsedError;
  String get unitMinutes => throw _privateConstructorUsedError;
  num get minuteFrom => throw _privateConstructorUsedError;
  num? get minuteTo => throw _privateConstructorUsedError;
  UnitType get unitType => throw _privateConstructorUsedError;
  String get unitValue => throw _privateConstructorUsedError;
  num? get kwhFrom => throw _privateConstructorUsedError;
  num? get kwhTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call(
      {String price,
      String? price3kw,
      String unitMinutes,
      num minuteFrom,
      num? minuteTo,
      UnitType unitType,
      String unitValue,
      num? kwhFrom,
      num? kwhTo});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? price3kw = freezed,
    Object? unitMinutes = null,
    Object? minuteFrom = null,
    Object? minuteTo = freezed,
    Object? unitType = null,
    Object? unitValue = null,
    Object? kwhFrom = freezed,
    Object? kwhTo = freezed,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      price3kw: freezed == price3kw
          ? _value.price3kw
          : price3kw // ignore: cast_nullable_to_non_nullable
              as String?,
      unitMinutes: null == unitMinutes
          ? _value.unitMinutes
          : unitMinutes // ignore: cast_nullable_to_non_nullable
              as String,
      minuteFrom: null == minuteFrom
          ? _value.minuteFrom
          : minuteFrom // ignore: cast_nullable_to_non_nullable
              as num,
      minuteTo: freezed == minuteTo
          ? _value.minuteTo
          : minuteTo // ignore: cast_nullable_to_non_nullable
              as num?,
      unitType: null == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType,
      unitValue: null == unitValue
          ? _value.unitValue
          : unitValue // ignore: cast_nullable_to_non_nullable
              as String,
      kwhFrom: freezed == kwhFrom
          ? _value.kwhFrom
          : kwhFrom // ignore: cast_nullable_to_non_nullable
              as num?,
      kwhTo: freezed == kwhTo
          ? _value.kwhTo
          : kwhTo // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$_PriceCopyWith(_$_Price value, $Res Function(_$_Price) then) =
      __$$_PriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String price,
      String? price3kw,
      String unitMinutes,
      num minuteFrom,
      num? minuteTo,
      UnitType unitType,
      String unitValue,
      num? kwhFrom,
      num? kwhTo});
}

/// @nodoc
class __$$_PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res, _$_Price>
    implements _$$_PriceCopyWith<$Res> {
  __$$_PriceCopyWithImpl(_$_Price _value, $Res Function(_$_Price) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? price3kw = freezed,
    Object? unitMinutes = null,
    Object? minuteFrom = null,
    Object? minuteTo = freezed,
    Object? unitType = null,
    Object? unitValue = null,
    Object? kwhFrom = freezed,
    Object? kwhTo = freezed,
  }) {
    return _then(_$_Price(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      price3kw: freezed == price3kw
          ? _value.price3kw
          : price3kw // ignore: cast_nullable_to_non_nullable
              as String?,
      unitMinutes: null == unitMinutes
          ? _value.unitMinutes
          : unitMinutes // ignore: cast_nullable_to_non_nullable
              as String,
      minuteFrom: null == minuteFrom
          ? _value.minuteFrom
          : minuteFrom // ignore: cast_nullable_to_non_nullable
              as num,
      minuteTo: freezed == minuteTo
          ? _value.minuteTo
          : minuteTo // ignore: cast_nullable_to_non_nullable
              as num?,
      unitType: null == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType,
      unitValue: null == unitValue
          ? _value.unitValue
          : unitValue // ignore: cast_nullable_to_non_nullable
              as String,
      kwhFrom: freezed == kwhFrom
          ? _value.kwhFrom
          : kwhFrom // ignore: cast_nullable_to_non_nullable
              as num?,
      kwhTo: freezed == kwhTo
          ? _value.kwhTo
          : kwhTo // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Price implements _Price {
  const _$_Price(
      {required this.price,
      this.price3kw,
      required this.unitMinutes,
      required this.minuteFrom,
      this.minuteTo,
      required this.unitType,
      required this.unitValue,
      this.kwhFrom,
      this.kwhTo});

  factory _$_Price.fromJson(Map<String, dynamic> json) =>
      _$$_PriceFromJson(json);

  @override
  final String price;
  @override
  final String? price3kw;
  @override
  final String unitMinutes;
  @override
  final num minuteFrom;
  @override
  final num? minuteTo;
  @override
  final UnitType unitType;
  @override
  final String unitValue;
  @override
  final num? kwhFrom;
  @override
  final num? kwhTo;

  @override
  String toString() {
    return 'Price(price: $price, price3kw: $price3kw, unitMinutes: $unitMinutes, minuteFrom: $minuteFrom, minuteTo: $minuteTo, unitType: $unitType, unitValue: $unitValue, kwhFrom: $kwhFrom, kwhTo: $kwhTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Price &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.price3kw, price3kw) ||
                other.price3kw == price3kw) &&
            (identical(other.unitMinutes, unitMinutes) ||
                other.unitMinutes == unitMinutes) &&
            (identical(other.minuteFrom, minuteFrom) ||
                other.minuteFrom == minuteFrom) &&
            (identical(other.minuteTo, minuteTo) ||
                other.minuteTo == minuteTo) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.unitValue, unitValue) ||
                other.unitValue == unitValue) &&
            (identical(other.kwhFrom, kwhFrom) || other.kwhFrom == kwhFrom) &&
            (identical(other.kwhTo, kwhTo) || other.kwhTo == kwhTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, price3kw, unitMinutes,
      minuteFrom, minuteTo, unitType, unitValue, kwhFrom, kwhTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      __$$_PriceCopyWithImpl<_$_Price>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  const factory _Price(
      {required final String price,
      final String? price3kw,
      required final String unitMinutes,
      required final num minuteFrom,
      final num? minuteTo,
      required final UnitType unitType,
      required final String unitValue,
      final num? kwhFrom,
      final num? kwhTo}) = _$_Price;

  factory _Price.fromJson(Map<String, dynamic> json) = _$_Price.fromJson;

  @override
  String get price;
  @override
  String? get price3kw;
  @override
  String get unitMinutes;
  @override
  num get minuteFrom;
  @override
  num? get minuteTo;
  @override
  UnitType get unitType;
  @override
  String get unitValue;
  @override
  num? get kwhFrom;
  @override
  num? get kwhTo;
  @override
  @JsonKey(ignore: true)
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      throw _privateConstructorUsedError;
}
