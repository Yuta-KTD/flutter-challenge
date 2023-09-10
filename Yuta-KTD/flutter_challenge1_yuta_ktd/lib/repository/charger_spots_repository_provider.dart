import 'package:flutter_challenge1_yuta_ktd/datasource/charger_spots_datasource_provider.dart';
import 'package:flutter_challenge1_yuta_ktd/repository/charger_spots_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'charger_spots_repository_interface.dart';

final chargerSpotsRepositoryProvider =
    Provider.autoDispose<ChargerSpotsRepositoryInterface>(
  (ref) => ChargerSpotsRepository(
      dataSource: ref.read(chargerSpotsDataSourceProvider)),
);
