import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../model/charger_spots_request.dart';
import 'charger_spots_datastore_interface.dart';
import 'package:dio/dio.dart';
import 'package:openapi/model/response.dart' as charger_spot_res;

class ChargerSpotsDataStore implements ChargerSpotsDataStoreInterface {
  final Dio dio;

  ChargerSpotsDataStore({required this.dio});

  @override
  Future<charger_spot_res.Response> fetchChargerSpots(
      ChargerSpotsRequest param) async {
    const url = Constant.chargerSpot;

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
