import 'package:openapi/model/response.dart' as charger_spot_res;

import '../model/charger_spots_request.dart';

abstract class ChargerSpotsRepositoryInterface {
  Future<charger_spot_res.Response> fetchChargerSpots(
      ChargerSpotsRequest param);
}
