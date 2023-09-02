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

part 'charger_spot_service_time.freezed.dart';
part 'charger_spot_service_time.g.dart';

@freezed
class ChargerSpotServiceTime with _$ChargerSpotServiceTime {
  /// Returns a new [ChargerSpotServiceTime] instance.
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChargerSpotServiceTime({
    required BusinessDay businessDay,
    required Day day,
    String? startTime,
    String? endTime,
    required bool today,
  }) = _ChargerSpotServiceTime;
  
  factory ChargerSpotServiceTime.fromJson(Map<String, dynamic> json) => _$ChargerSpotServiceTimeFromJson(json);
}

