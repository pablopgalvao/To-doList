import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  primaryColor: Colors.amber,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue,
  ).copyWith(
  secondary: Colors.blueGrey
  ),
); 