import 'package:flutter/cupertino.dart';

class RateNotifire extends ChangeNotifier{
  double rate=0;
  changeRating(double newValue){
    rate= newValue;
    notifyListeners();
  }
}