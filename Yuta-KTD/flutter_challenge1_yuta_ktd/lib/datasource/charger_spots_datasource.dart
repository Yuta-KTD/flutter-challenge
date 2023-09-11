import 'package:flutter/material.dart';

import '../constant/url.dart';
import '../model/charger_spots_request.dart';
import 'charger_spots_datasource_interface.dart';
import 'package:dio/dio.dart';
import 'package:openapi/model/response.dart' as charger_spot_res;

class ChargerSpotsDataSource implements ChargerSpotsDataSourceInterface {
  final Dio dio;

  ChargerSpotsDataSource({required this.dio});

  @override
  Future<charger_spot_res.Response> fetchChargerSpots(
      ChargerSpotsRequest param) async {
    const url = URL.chargerSpot;

    try {
      final response = await dio.get(url, queryParameters: param.toJson());
      final responseData = charger_spot_res.Response.fromJson(response.data);
      return responseData;
    } on Exception catch (e) {
      throw Exception(e.toString());
    } finally {
      debugPrint('fetch!!!!');
    }
  }
}
