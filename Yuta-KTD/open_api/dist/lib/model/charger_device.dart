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

part 'charger_device.freezed.dart';
part 'charger_device.g.dart';

@freezed
class ChargerDevice with _$ChargerDevice {
  /// Returns a new [ChargerDevice] instance.
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChargerDevice({
    required String name,
    required String code,
    required String makerCode,
    required String productCode,
    required String serialNumber,
    String? serviceStartTime,
    String? serviceEndTime,
    String? allowCurrent,
    String? maxChargeTime,
    required num latitude,
    required num longitude,
    required DisplayStatus displayStatus,
    required String power,
    required String fee,
    String? lastUpdated,
  }) = _ChargerDevice;
  
  factory ChargerDevice.fromJson(Map<String, dynamic> json) => _$ChargerDeviceFromJson(json);
}

