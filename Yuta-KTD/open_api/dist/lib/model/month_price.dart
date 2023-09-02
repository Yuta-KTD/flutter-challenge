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

part 'month_price.freezed.dart';
part 'month_price.g.dart';

@freezed
class MonthPrice with _$MonthPrice {
  /// Returns a new [MonthPrice] instance.
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MonthPrice({
    required String month,
    @Default(const []) List<Price> prices,
  }) = _MonthPrice;
  
  factory MonthPrice.fromJson(Map<String, dynamic> json) => _$MonthPriceFromJson(json);
}

