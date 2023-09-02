// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'month_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonthPrice _$MonthPriceFromJson(Map<String, dynamic> json) {
  return _MonthPrice.fromJson(json);
}

/// @nodoc
mixin _$MonthPrice {
  String get month => throw _privateConstructorUsedError;
  List<Price> get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthPriceCopyWith<MonthPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthPriceCopyWith<$Res> {
  factory $MonthPriceCopyWith(
          MonthPrice value, $Res Function(MonthPrice) then) =
      _$MonthPriceCopyWithImpl<$Res, MonthPrice>;
  @useResult
  $Res call({String month, List<Price> prices});
}

/// @nodoc
class _$MonthPriceCopyWithImpl<$Res, $Val extends MonthPrice>
    implements $MonthPriceCopyWith<$Res> {
  _$MonthPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? prices = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MonthPriceCopyWith<$Res>
    implements $MonthPriceCopyWith<$Res> {
  factory _$$_MonthPriceCopyWith(
          _$_MonthPrice value, $Res Function(_$_MonthPrice) then) =
      __$$_MonthPriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String month, List<Price> prices});
}

/// @nodoc
class __$$_MonthPriceCopyWithImpl<$Res>
    extends _$MonthPriceCopyWithImpl<$Res, _$_MonthPrice>
    implements _$$_MonthPriceCopyWith<$Res> {
  __$$_MonthPriceCopyWithImpl(
      _$_MonthPrice _value, $Res Function(_$_MonthPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? prices = null,
  }) {
    return _then(_$_MonthPrice(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_MonthPrice implements _MonthPrice {
  const _$_MonthPrice(
      {required this.month, final List<Price> prices = const []})
      : _prices = prices;

  factory _$_MonthPrice.fromJson(Map<String, dynamic> json) =>
      _$$_MonthPriceFromJson(json);

  @override
  final String month;
  final List<Price> _prices;
  @override
  @JsonKey()
  List<Price> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  String toString() {
    return 'MonthPrice(month: $month, prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonthPrice &&
            (identical(other.month, month) || other.month == month) &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, month, const DeepCollectionEquality().hash(_prices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthPriceCopyWith<_$_MonthPrice> get copyWith =>
      __$$_MonthPriceCopyWithImpl<_$_MonthPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MonthPriceToJson(
      this,
    );
  }
}

abstract class _MonthPrice implements MonthPrice {
  const factory _MonthPrice(
      {required final String month, final List<Price> prices}) = _$_MonthPrice;

  factory _MonthPrice.fromJson(Map<String, dynamic> json) =
      _$_MonthPrice.fromJson;

  @override
  String get month;
  @override
  List<Price> get prices;
  @override
  @JsonKey(ignore: true)
  _$$_MonthPriceCopyWith<_$_MonthPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
