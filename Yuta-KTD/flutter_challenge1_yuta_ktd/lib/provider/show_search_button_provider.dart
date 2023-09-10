import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 現在位置検索ボタンの表示を制御する
final showSearchButtonProvider =
    StateProvider.autoDispose<bool>((ref) => false);
