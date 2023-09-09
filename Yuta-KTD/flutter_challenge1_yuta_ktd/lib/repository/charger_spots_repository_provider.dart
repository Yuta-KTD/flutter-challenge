import 'package:flutter_challenge1_yuta_ktd/datastore/charger_spots_datastore_provider.dart';
import 'package:flutter_challenge1_yuta_ktd/repository/charger_spots_repository.dart';
import 'package:flutter_challenge1_yuta_ktd/repository/charger_spots_repository_mock.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'charger_spots_repository_interface.dart';

final chargerSpotsRepositoryProvider =
    Provider.autoDispose<ChargerSpotsRepositoryInterface>(
  // TODO: 504解消するまでモック化
  (ref) => ChargerSpotsRepositoryMock(
      dataStore: ref.read(chargerSpotsDataStoreProvider)),
);
