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

part 'grouped_total_unit_prices_this_month_next_month_by_user.freezed.dart';
part 'grouped_total_unit_prices_this_month_next_month_by_user.g.dart';

@freezed
class GroupedTotalUnitPricesThisMonthNextMonthByUser with _$GroupedTotalUnitPricesThisMonthNextMonthByUser {
  /// Returns a new [GroupedTotalUnitPricesThisMonthNextMonthByUser] instance.
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GroupedTotalUnitPricesThisMonthNextMonthByUser({
    @Default(const []) List<String> chargerDeviceCodes,
    String? power,
    DateTime? expires,
    @Default(const []) List<MonthPrice> monthPrices,
  }) = _GroupedTotalUnitPricesThisMonthNextMonthByUser;
  
  factory GroupedTotalUnitPricesThisMonthNextMonthByUser.fromJson(Map<String, dynamic> json) => _$GroupedTotalUnitPricesThisMonthNextMonthByUserFromJson(json);
}

