import 'package:flutter/material.dart';

class CarousalProvider extends ChangeNotifier {
  int _current = 0;

  int get current => _current;

  void setCurrent(int index) {
    _current = index;
    notifyListeners();
  }
}
