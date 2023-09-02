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

part 'gogoev_charger_device.freezed.dart';
part 'gogoev_charger_device.g.dart';

@freezed
class GogoevChargerDevice with _$GogoevChargerDevice {
  /// Returns a new [GogoevChargerDevice] instance.
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GogoevChargerDevice({
    @Default(const []) List<String> deviceTypes,
    String? power,
    required num number,
    required String fee,
    @Default(const []) List<String> authenticationNetworks,
    @Default(const []) List<String> authenticationApps,
  }) = _GogoevChargerDevice;
  
  factory GogoevChargerDevice.fromJson(Map<String, dynamic> json) => _$GogoevChargerDeviceFromJson(json);
}

