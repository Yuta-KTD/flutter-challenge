// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gogoev_charger_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GogoevChargerDevice _$$_GogoevChargerDeviceFromJson(
        Map<String, dynamic> json) =>
    _$_GogoevChargerDevice(
      deviceTypes: (json['device_types'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      power: json['power'] as String?,
      number: json['number'] as num,
      fee: json['fee'] as String,
      authenticationNetworks:
          (json['authentication_networks'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
      authenticationApps: (json['authentication_apps'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GogoevChargerDeviceToJson(
        _$_GogoevChargerDevice instance) =>
    <String, dynamic>{
      'device_types': instance.deviceTypes,
      'power': instance.power,
      'number': instance.number,
      'fee': instance.fee,
      'authentication_networks': instance.authenticationNetworks,
      'authentication_apps': instance.authenticationApps,
    };
