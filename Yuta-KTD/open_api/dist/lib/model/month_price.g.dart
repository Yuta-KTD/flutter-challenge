// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MonthPrice _$$_MonthPriceFromJson(Map<String, dynamic> json) =>
    _$_MonthPrice(
      month: json['month'] as String,
      prices: (json['prices'] as List<dynamic>?)
              ?.map((e) => Price.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MonthPriceToJson(_$_MonthPrice instance) =>
    <String, dynamic>{
      'month': instance.month,
      'prices': instance.prices,
    };
