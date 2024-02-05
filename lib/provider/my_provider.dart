import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
String Language="en";
ThemeMode themeMode=ThemeMode.light;

void changeLanguage(String languageCode){
  Language=languageCode;
  notifyListeners();
}
void changeTheme(ThemeMode mode){
  themeMode=mode;
  notifyListeners();
}
String getBackground(){
  if(themeMode==ThemeMode.light){
    return"assets/images/main_bg.png";
  }
    return"assets/images/main_background_dark.png";

}
}