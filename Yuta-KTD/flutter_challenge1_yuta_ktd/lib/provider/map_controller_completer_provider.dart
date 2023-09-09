import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// GoogleMapControllerの非同期処理用プロバイダー
final mapControllerCompleterProvider =
    Provider<Completer<GoogleMapController>>((ref) => Completer());
