import 'dart:developer';

import 'package:flutter/material.dart';

import '../datastore/charger_spots_datastore_interface.dart';
import 'charger_spots_repository_interface.dart';
import 'package:openapi/model/response.dart' as charger_spot_res;

import '../model/charger_spots_request.dart';

class ChargerSpotsRepository implements ChargerSpotsRepositoryInterface {
  final ChargerSpotsDataStoreInterface dataStore;
  ChargerSpotsRepository({required this.dataStore});

  @override
  Future<charger_spot_res.Response> fetchChargerSpots(
      ChargerSpotsRequest param) async {
    try {
      final data = await dataStore.fetchChargerSpots(param);
      inspect(data);
      return data;
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    } finally {
      debugPrint('End fetchChargerSpots from repository.');
    }
  }
}
