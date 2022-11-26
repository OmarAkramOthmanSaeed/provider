import 'package:flutter/material.dart';

getFaces(int index){
  switch(index){
    case 0:
      return Icon(Icons.sentiment_very_dissatisfied,size: 60,color: Colors.red,);
    case 1:
      return Icon(Icons.sentiment_dissatisfied,size: 60,color: Colors.redAccent,);
    case 2:
      return Icon(Icons.sentiment_neutral,size: 60,color: Colors.amber,);
    case 3:
      return Icon(Icons.sentiment_satisfied,size: 60,color: Colors.lightGreen,);
    case 4:
      return Icon(Icons.sentiment_very_satisfied,size: 60,color: Colors.green,);
  }
}