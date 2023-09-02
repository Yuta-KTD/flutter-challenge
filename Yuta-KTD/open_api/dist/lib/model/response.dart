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

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class Response with _$Response {
  /// Returns a new [Response] instance.
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Response({
    required Status status,
    @Default(const []) List<ChargerSpot> chargerSpots,
  }) = _Response;
  
  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
}

