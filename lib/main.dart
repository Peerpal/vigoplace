import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'introScreen.dart';

void main() {
  runApp(const VigoApp());
}

class VigoApp extends StatelessWidget {
  const VigoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VigoPlace',
      theme: ThemeData(
        primaryColor: HexColor('#8135F9'),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const IntroScreen(),
    );
  }
}
