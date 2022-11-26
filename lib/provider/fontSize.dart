import 'package:flutter/cupertino.dart';

class fontSizeNotifier extends ChangeNotifier{
  double fontsize=20;
  changeFontSize(double newValue){
    fontsize= newValue;
    notifyListeners();
  }
}