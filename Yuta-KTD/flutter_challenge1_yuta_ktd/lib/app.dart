import 'package:flutter/material.dart';

import 'view/charger_spots/charger_spots_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: ChargerSpotScreen(),
    );
  }
}
