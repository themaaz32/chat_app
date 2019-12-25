
import 'package:flutter/material.dart';

class AppStyleModeNotifier extends ChangeNotifier{
  int mode = 0; //0 for light and 1 for dark

  Color primaryBackgroundColor = Colors.grey[100];
  Color primaryTextColorDark = Colors.grey[900];
  Color primaryTextColorLight = Colors.grey;
  Color primaryTextColor = Colors.grey[800];
  Color primaryMessageBoxColor = Colors.blue;
  Color secondaryMessageBoxColor = Colors.grey[300];
  Color primaryMessageTextColor = Colors.white;
  Color secondaryMessageTextColor = Colors.grey[800];
  Color typeMessageBoxColor = Colors.grey[200];

  switchMode(){

    if(mode == 0){
      //if it is light mode currently switch to dark
      primaryBackgroundColor = Colors.grey[900];
      primaryTextColorDark = Colors.grey[100];
      primaryTextColorLight = Colors.grey;
      primaryTextColor = Colors.grey[300];
      primaryMessageBoxColor = Colors.blue;
      secondaryMessageBoxColor = Colors.grey[800];
      primaryMessageTextColor = Colors.white;
      secondaryMessageTextColor = Colors.white;
      typeMessageBoxColor = Colors.grey[800];
      mode = 1;
    }
    else{
      //if it is dark mode currently switch to light
      primaryBackgroundColor = Colors.grey[100];
      primaryTextColorDark = Colors.grey[900];
      primaryTextColorLight = Colors.grey;
      primaryTextColor = Colors.grey[800];
      primaryMessageBoxColor = Colors.blue;
      secondaryMessageBoxColor = Colors.grey[300];
      primaryMessageTextColor = Colors.white;
      secondaryMessageTextColor = Colors.grey[800];
      typeMessageBoxColor = Colors.grey[200];
      mode = 0;
    }

    notifyListeners();

  }

}