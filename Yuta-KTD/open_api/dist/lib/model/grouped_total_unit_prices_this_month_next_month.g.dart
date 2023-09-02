// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grouped_total_unit_prices_this_month_next_month.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupedTotalUnitPricesThisMonthNextMonth
    _$$_GroupedTotalUnitPricesThisMonthNextMonthFromJson(
            Map<String, dynamic> json) =>
        _$_GroupedTotalUnitPricesThisMonthNextMonth(
          chargerDeviceCodes: (json['charger_device_codes'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          power: json['power'] as String?,
          monthPrices: (json['month_prices'] as List<dynamic>?)
                  ?.map((e) => MonthPrice.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$_GroupedTotalUnitPricesThisMonthNextMonthToJson(
        _$_GroupedTotalUnitPricesThisMonthNextMonth instance) =>
    <String, dynamic>{
      'charger_device_codes': instance.chargerDeviceCodes,
      'power': instance.power,
      'month_prices': instance.monthPrices,
    };
