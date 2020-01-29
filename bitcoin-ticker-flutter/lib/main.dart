import 'package:flutter/material.dart';

import 'price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFFD2D4DB),
        scaffoldBackgroundColor: Colors.white,
        accentColor: Colors.grey,
      ),
      home: PriceScreen(),
    );
  }
}
