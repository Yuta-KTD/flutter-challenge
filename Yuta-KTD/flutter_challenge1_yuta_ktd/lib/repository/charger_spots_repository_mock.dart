// ignore_for_file: prefer_single_quotes

import 'package:flutter/material.dart';
import 'package:openapi/models.dart';

import '../datastore/charger_spots_datastore_interface.dart';
import 'charger_spots_repository_interface.dart';
import 'package:openapi/model/response.dart' as charger_spot_res;

import '../model/charger_spots_request.dart';
import 'dart:math';

class ChargerSpotsRepositoryMock implements ChargerSpotsRepositoryInterface {
  final ChargerSpotsDataStoreInterface dataStore;
  ChargerSpotsRepositoryMock({required this.dataStore});

  @override
  Future<charger_spot_res.Response> fetchChargerSpots(
      ChargerSpotsRequest param) async {
    try {
      final data = ChargerMock.mockResponse;
      return data;
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    } finally {
      debugPrint('End fetchChargerSpots from repository.');
    }
  }
}

class ChargerMock {
// ChargerDeviceのモックデータを生成
  static List<ChargerDevice> generateMockChargerDevices() {
    return [
      ChargerDevice(
        name: "Device1",
        code: "code1",
        makerCode: "MK1",
        productCode: "PR1",
        serialNumber: "SN1",
        latitude: 35.6895 + Random().nextDouble() * 0.01,
        longitude: 139.6917 + Random().nextDouble() * 0.01,
        displayStatus: DisplayStatus.available,
        power: "100W",
        fee: "100JPY",
      ),
      ChargerDevice(
        name: "Device2",
        code: "code2",
        makerCode: "MK2",
        productCode: "PR2",
        serialNumber: "SN2",
        latitude: 35.6895 + Random().nextDouble() * 0.01,
        longitude: 139.6917 + Random().nextDouble() * 0.01,
        displayStatus: DisplayStatus.inUse,
        power: "200W",
        fee: "200JPY",
      ),
      ChargerDevice(
        name: "Device3",
        code: "code3",
        makerCode: "MK3",
        productCode: "PR3",
        serialNumber: "SN3",
        latitude: 35.6895 + Random().nextDouble() * 0.01,
        longitude: 139.6917 + Random().nextDouble() * 0.01,
        displayStatus: DisplayStatus.available,
        power: "300W",
        fee: "300JPY",
      ),
    ];
  }

  // ChargerSpotのモックデータ
  static List<ChargerSpot> mockChargerSpots = [
    ChargerSpot(
      uuid: "uuid_1",
      name: "Spot1",
      latitude: 35.6895 + Random().nextDouble() * 0.01,
      longitude: 139.6917 + Random().nextDouble() * 0.01,
      source: ModelSource.enechange,
      chargerSpotServiceTimes: [],
      chargerDevices: generateMockChargerDevices(),
    ),
    ChargerSpot(
      uuid: "uuid_2",
      name: "Spot2",
      latitude: 35.6895 + Random().nextDouble() * 0.01,
      longitude: 139.6917 + Random().nextDouble() * 0.01,
      source: ModelSource.enechange,
      chargerSpotServiceTimes: [],
      chargerDevices: generateMockChargerDevices(),
    ),
    ChargerSpot(
      uuid: "uuid_3",
      name: "Spot3",
      latitude: 35.6895 + Random().nextDouble() * 0.01,
      longitude: 139.6917 + Random().nextDouble() * 0.01,
      source: ModelSource.enechange,
      chargerSpotServiceTimes: [],
      chargerDevices: generateMockChargerDevices(),
    ),
  ];

  // Responseのモックデータ
  static Response mockResponse =
      Response(status: Status.ok, chargerSpots: mockChargerSpots);
}
