
import 'package:azmagic/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{

  ThemeData _themeData = fontsLight;

  ThemeData get themeData=> _themeData;

  set themeData(ThemeData themeData){

_themeData = themeData;
notifyListeners();

  }
  void toggleTheme(){

    if(_themeData==fontsLight){
      themeData = fontsDark;
      
    }else{
      
      themeData=fontsLight;
    }
  }
}