import 'package:flutter/material.dart';

class MyThemeData {

  static Color colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static Color colorGold = Color.fromRGBO(183, 147, 95, 1.0); //0F1424
  static Color primaryDarkColor = Color.fromRGBO(15, 20, 36, 1.0); //FACC1D
  static Color OnprimaryDarkColor = Color.fromRGBO(250, 204, 29, 1.0);
  //====================================================================================
  static ThemeData lightTheme = ThemeData(
      primaryColor: colorGold,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
        primary:colorGold ,
        onPrimary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: colorGold,
        onSurface: Colors.white,
        background: Colors.transparent,
        onBackground: colorBlack,
        secondary: colorBlack,
        onSecondary: Colors.white,
        brightness: Brightness.light,
      ),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: colorBlack)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorGold,
          selectedItemColor: colorBlack,
          unselectedItemColor: Colors.white),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: colorBlack),
          subtitle1: TextStyle(fontSize: 25, color: colorGold)));
//======================================================================================
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme(
      primary: primaryDarkColor,
      onPrimary: OnprimaryDarkColor,
      error: Colors.red,
      onError: Colors.white,
      surface: primaryDarkColor,
      onSurface: Colors.white,
      background: Colors.transparent,
      onBackground: OnprimaryDarkColor,
      secondary: primaryDarkColor,
      onSecondary: OnprimaryDarkColor,
      brightness: Brightness.dark,
    ),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryDarkColor,
        selectedItemColor: OnprimaryDarkColor,
        unselectedItemColor: Colors.white),
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      subtitle1: TextStyle(fontSize: 25, color: OnprimaryDarkColor),
    ),
  );
}
