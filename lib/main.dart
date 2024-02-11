// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:hallify/pages/homepage.dart';
import 'package:hallify/pages/welcome.dart';

void main() async {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontFamily: 'AirbnbCereal'),
        ),
      ),
      home: const WelcomeScreen(), // Your welcome screen widget goes here
    ),
  );
}
