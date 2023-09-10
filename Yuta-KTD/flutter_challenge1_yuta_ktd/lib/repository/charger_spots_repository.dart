import 'package:flutter/material.dart';

import '../datasource/charger_spots_datasource_interface.dart';
import 'charger_spots_repository_interface.dart';
import 'package:openapi/model/response.dart' as charger_spot_res;

import '../model/charger_spots_request.dart';

class ChargerSpotsRepository implements ChargerSpotsRepositoryInterface {
  final ChargerSpotsDataSourceInterface dataSource;
  ChargerSpotsRepository({required this.dataSource});

  @override
  Future<charger_spot_res.Response> fetchChargerSpots(
      ChargerSpotsRequest param) async {
    try {
      final data = await dataSource.fetchChargerSpots(param);
      return data;
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    } finally {
      debugPrint('End fetchChargerSpots from repository.');
    }
  }
}
