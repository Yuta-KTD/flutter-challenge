//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../models.dart';

part 'grouped_total_unit_prices_this_month_next_month.freezed.dart';
part 'grouped_total_unit_prices_this_month_next_month.g.dart';

@freezed
class GroupedTotalUnitPricesThisMonthNextMonth with _$GroupedTotalUnitPricesThisMonthNextMonth {
  /// Returns a new [GroupedTotalUnitPricesThisMonthNextMonth] instance.
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GroupedTotalUnitPricesThisMonthNextMonth({
    @Default(const []) List<String> chargerDeviceCodes,
    String? power,
    @Default(const []) List<MonthPrice> monthPrices,
  }) = _GroupedTotalUnitPricesThisMonthNextMonth;
  
  factory GroupedTotalUnitPricesThisMonthNextMonth.fromJson(Map<String, dynamic> json) => _$GroupedTotalUnitPricesThisMonthNextMonthFromJson(json);
}

