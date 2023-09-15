import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff17AF4E),
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 25, color: Colors.white)),
  colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff17AF4E)),
  useMaterial3: true,
);
