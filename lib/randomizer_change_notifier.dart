import 'dart:math';

import 'package:flutter/foundation.dart';

class RandomizorChangeNotifier extends ChangeNotifier{
  final _randomGenerator = Random();
  int? _generatedNumber;

 int? get  generatedNumber => _generatedNumber; 

 int min=0,max=0;

 void generateRandomNumber(){
  if(max <= 0) max=1;
  _generatedNumber = min + _randomGenerator.nextInt(max+1 -min);
  notifyListeners();

 }
}