import 'package:flutter_riverpod/flutter_riverpod.dart';

// カードのせり出しを制御する
final showCardProvider = StateProvider.autoDispose<bool>((ref) => false);
