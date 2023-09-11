import 'package:flutter_challenge1_yuta_ktd/datasource/charger_spots_datasource.dart';
import 'package:flutter_challenge1_yuta_ktd/core/api/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'charger_spots_datasource_interface.dart';

final chargerSpotsDataSourceProvider =
    Provider.autoDispose<ChargerSpotsDataSourceInterface>(
  (ref) => ChargerSpotsDataSource(dio: ref.read(dioProvider)),
);
