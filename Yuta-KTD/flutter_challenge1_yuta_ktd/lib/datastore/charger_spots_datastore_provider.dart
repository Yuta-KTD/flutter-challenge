import 'package:flutter_challenge1_yuta_ktd/datastore/charger_spots_datastore.dart';
import 'package:flutter_challenge1_yuta_ktd/api/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'charger_spots_datastore_interface.dart';

final chargerSpotsDataStoreProvider =
    Provider.autoDispose<ChargerSpotsDataStoreInterface>(
  (ref) => ChargerSpotsDataStore(dio: ref.read(dioProvider)),
);
