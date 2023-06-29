import 'package:flutter/material.dart';

import 'custom_colors.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      //2
      primaryColor: CustomColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Montserrat',
      useMaterial3: true,
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: CustomColors.primaryColor,
              foregroundColor: Colors.black87,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: CustomColors.primaryColor,
              foregroundColor: Colors.black87,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)))),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: CustomColors.primaryColorDark,
      scaffoldBackgroundColor: CustomColors.primaryColorDark,
      fontFamily: 'Montserrat',
      useMaterial3: true,
      unselectedWidgetColor: Colors.white,
      appBarTheme: AppBarTheme(
          backgroundColor: CustomColors.primaryColorDark,
          titleTextStyle: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
      textTheme: ThemeData.dark().textTheme,
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: CustomColors.primaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: CustomColors.primaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)))),
    );
  }
}
