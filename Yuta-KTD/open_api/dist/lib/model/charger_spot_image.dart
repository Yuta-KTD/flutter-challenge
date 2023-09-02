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

part 'charger_spot_image.freezed.dart';
part 'charger_spot_image.g.dart';

@freezed
class ChargerSpotImage with _$ChargerSpotImage {
  /// Returns a new [ChargerSpotImage] instance.
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChargerSpotImage({
    required String url,
    String? caption,
  }) = _ChargerSpotImage;
  
  factory ChargerSpotImage.fromJson(Map<String, dynamic> json) => _$ChargerSpotImageFromJson(json);
}

