// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_spots_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChargerSpotsRequest _$$_ChargerSpotsRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ChargerSpotsRequest(
      xEveneNativeApiToken: json['X-EVENE-NATIVE-API-TOKEN'] as String,
      swLat: json['sw_lat'] as String?,
      swLng: json['sw_lng'] as String?,
      neLat: json['ne_lat'] as String?,
      neLng: json['ne_lng'] as String?,
      uuid: json['uuid'] as String?,
      fields: json['fields'] as String?,
    );

Map<String, dynamic> _$$_ChargerSpotsRequestToJson(
        _$_ChargerSpotsRequest instance) =>
    <String, dynamic>{
      'X-EVENE-NATIVE-API-TOKEN': instance.xEveneNativeApiToken,
      'sw_lat': instance.swLat,
      'sw_lng': instance.swLng,
      'ne_lat': instance.neLat,
      'ne_lng': instance.neLng,
      'uuid': instance.uuid,
      'fields': instance.fields,
    };
