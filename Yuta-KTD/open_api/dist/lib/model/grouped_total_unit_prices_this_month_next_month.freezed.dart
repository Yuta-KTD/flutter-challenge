// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grouped_total_unit_prices_this_month_next_month.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupedTotalUnitPricesThisMonthNextMonth
    _$GroupedTotalUnitPricesThisMonthNextMonthFromJson(
        Map<String, dynamic> json) {
  return _GroupedTotalUnitPricesThisMonthNextMonth.fromJson(json);
}

/// @nodoc
mixin _$GroupedTotalUnitPricesThisMonthNextMonth {
  List<String> get chargerDeviceCodes => throw _privateConstructorUsedError;
  String? get power => throw _privateConstructorUsedError;
  List<MonthPrice> get monthPrices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupedTotalUnitPricesThisMonthNextMonthCopyWith<
          GroupedTotalUnitPricesThisMonthNextMonth>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupedTotalUnitPricesThisMonthNextMonthCopyWith<$Res> {
  factory $GroupedTotalUnitPricesThisMonthNextMonthCopyWith(
          GroupedTotalUnitPricesThisMonthNextMonth value,
          $Res Function(GroupedTotalUnitPricesThisMonthNextMonth) then) =
      _$GroupedTotalUnitPricesThisMonthNextMonthCopyWithImpl<$Res,
          GroupedTotalUnitPricesThisMonthNextMonth>;
  @useResult
  $Res call(
      {List<String> chargerDeviceCodes,
      String? power,
      List<MonthPrice> monthPrices});
}

/// @nodoc
class _$GroupedTotalUnitPricesThisMonthNextMonthCopyWithImpl<$Res,
        $Val extends GroupedTotalUnitPricesThisMonthNextMonth>
    implements $GroupedTotalUnitPricesThisMonthNextMonthCopyWith<$Res> {
  _$GroupedTotalUnitPricesThisMonthNextMonthCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chargerDeviceCodes = null,
    Object? power = freezed,
    Object? monthPrices = null,
  }) {
    return _then(_value.copyWith(
      chargerDeviceCodes: null == chargerDeviceCodes
          ? _value.chargerDeviceCodes
          : chargerDeviceCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as String?,
      monthPrices: null == monthPrices
          ? _value.monthPrices
          : monthPrices // ignore: cast_nullable_to_non_nullable
              as List<MonthPrice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupedTotalUnitPricesThisMonthNextMonthCopyWith<$Res>
    implements $GroupedTotalUnitPricesThisMonthNextMonthCopyWith<$Res> {
  factory _$$_GroupedTotalUnitPricesThisMonthNextMonthCopyWith(
          _$_GroupedTotalUnitPricesThisMonthNextMonth value,
          $Res Function(_$_GroupedTotalUnitPricesThisMonthNextMonth) then) =
      __$$_GroupedTotalUnitPricesThisMonthNextMonthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> chargerDeviceCodes,
      String? power,
      List<MonthPrice> monthPrices});
}

/// @nodoc
class __$$_GroupedTotalUnitPricesThisMonthNextMonthCopyWithImpl<$Res>
    extends _$GroupedTotalUnitPricesThisMonthNextMonthCopyWithImpl<$Res,
        _$_GroupedTotalUnitPricesThisMonthNextMonth>
    implements _$$_GroupedTotalUnitPricesThisMonthNextMonthCopyWith<$Res> {
  __$$_GroupedTotalUnitPricesThisMonthNextMonthCopyWithImpl(
      _$_GroupedTotalUnitPricesThisMonthNextMonth _value,
      $Res Function(_$_GroupedTotalUnitPricesThisMonthNextMonth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chargerDeviceCodes = null,
    Object? power = freezed,
    Object? monthPrices = null,
  }) {
    return _then(_$_GroupedTotalUnitPricesThisMonthNextMonth(
      chargerDeviceCodes: null == chargerDeviceCodes
          ? _value._chargerDeviceCodes
          : chargerDeviceCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as String?,
      monthPrices: null == monthPrices
          ? _value._monthPrices
          : monthPrices // ignore: cast_nullable_to_non_nullable
              as List<MonthPrice>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GroupedTotalUnitPricesThisMonthNextMonth
    implements _GroupedTotalUnitPricesThisMonthNextMonth {
  const _$_GroupedTotalUnitPricesThisMonthNextMonth(
      {final List<String> chargerDeviceCodes = const [],
      this.power,
      final List<MonthPrice> monthPrices = const []})
      : _chargerDeviceCodes = chargerDeviceCodes,
        _monthPrices = monthPrices;

  factory _$_GroupedTotalUnitPricesThisMonthNextMonth.fromJson(
          Map<String, dynamic> json) =>
      _$$_GroupedTotalUnitPricesThisMonthNextMonthFromJson(json);

  final List<String> _chargerDeviceCodes;
  @override
  @JsonKey()
  List<String> get chargerDeviceCodes {
    if (_chargerDeviceCodes is EqualUnmodifiableListView)
      return _chargerDeviceCodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chargerDeviceCodes);
  }

  @override
  final String? power;
  final List<MonthPrice> _monthPrices;
  @override
  @JsonKey()
  List<MonthPrice> get monthPrices {
    if (_monthPrices is EqualUnmodifiableListView) return _monthPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthPrices);
  }

  @override
  String toString() {
    return 'GroupedTotalUnitPricesThisMonthNextMonth(chargerDeviceCodes: $chargerDeviceCodes, power: $power, monthPrices: $monthPrices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupedTotalUnitPricesThisMonthNextMonth &&
            const DeepCollectionEquality()
                .equals(other._chargerDeviceCodes, _chargerDeviceCodes) &&
            (identical(other.power, power) || other.power == power) &&
            const DeepCollectionEquality()
                .equals(other._monthPrices, _monthPrices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chargerDeviceCodes),
      power,
      const DeepCollectionEquality().hash(_monthPrices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupedTotalUnitPricesThisMonthNextMonthCopyWith<
          _$_GroupedTotalUnitPricesThisMonthNextMonth>
      get copyWith => __$$_GroupedTotalUnitPricesThisMonthNextMonthCopyWithImpl<
          _$_GroupedTotalUnitPricesThisMonthNextMonth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupedTotalUnitPricesThisMonthNextMonthToJson(
      this,
    );
  }
}

abstract class _GroupedTotalUnitPricesThisMonthNextMonth
    implements GroupedTotalUnitPricesThisMonthNextMonth {
  const factory _GroupedTotalUnitPricesThisMonthNextMonth(
          {final List<String> chargerDeviceCodes,
          final String? power,
          final List<MonthPrice> monthPrices}) =
      _$_GroupedTotalUnitPricesThisMonthNextMonth;

  factory _GroupedTotalUnitPricesThisMonthNextMonth.fromJson(
          Map<String, dynamic> json) =
      _$_GroupedTotalUnitPricesThisMonthNextMonth.fromJson;

  @override
  List<String> get chargerDeviceCodes;
  @override
  String? get power;
  @override
  List<MonthPrice> get monthPrices;
  @override
  @JsonKey(ignore: true)
  _$$_GroupedTotalUnitPricesThisMonthNextMonthCopyWith<
          _$_GroupedTotalUnitPricesThisMonthNextMonth>
      get copyWith => throw _privateConstructorUsedError;
}
