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

part 'price.freezed.dart';
part 'price.g.dart';

@freezed
class Price with _$Price {
  /// Returns a new [Price] instance.
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Price({
    required String price,
    String? price3kw,
    required String unitMinutes,
    required num minuteFrom,
    num? minuteTo,
    required UnitType unitType,
    required String unitValue,
    num? kwhFrom,
    num? kwhTo,
  }) = _Price;
  
  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

