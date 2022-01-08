import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final Color primary = Colors.orange;

ThemeData personaliteTheme = ThemeData.light().copyWith(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedItemColor: Colors.blueGrey,
    selectedItemColor: primary,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    selectedLabelStyle: TextStyle(fontSize: 13),
    unselectedLabelStyle: TextStyle(fontSize: 13),
    type: BottomNavigationBarType.fixed,
  ),
  scaffoldBackgroundColor: Colors.grey.shade100,
  appBarTheme: AppBarTheme(
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0,
  ),
);
