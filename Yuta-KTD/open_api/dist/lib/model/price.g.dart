// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Price _$$_PriceFromJson(Map<String, dynamic> json) => _$_Price(
      price: json['price'] as String,
      price3kw: json['price3kw'] as String?,
      unitMinutes: json['unit_minutes'] as String,
      minuteFrom: json['minute_from'] as num,
      minuteTo: json['minute_to'] as num?,
      unitType: $enumDecode(_$UnitTypeEnumMap, json['unit_type']),
      unitValue: json['unit_value'] as String,
      kwhFrom: json['kwh_from'] as num?,
      kwhTo: json['kwh_to'] as num?,
    );

Map<String, dynamic> _$$_PriceToJson(_$_Price instance) => <String, dynamic>{
      'price': instance.price,
      'price3kw': instance.price3kw,
      'unit_minutes': instance.unitMinutes,
      'minute_from': instance.minuteFrom,
      'minute_to': instance.minuteTo,
      'unit_type': _$UnitTypeEnumMap[instance.unitType]!,
      'unit_value': instance.unitValue,
      'kwh_from': instance.kwhFrom,
      'kwh_to': instance.kwhTo,
    };

const _$UnitTypeEnumMap = {
  UnitType.minute: 'minute',
  UnitType.kwh: 'kwh',
};
