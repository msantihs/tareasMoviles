import 'dart:math';

import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0; //variable privada, se usa en el provider

  int get counter => _counter; //variable publica u

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  void reset() {
    _counter = 0;
    notifyListeners();
  }

  void mult2() {
    _counter *= 2;
    notifyListeners();
  }

  void mult3() {
    _counter *= 3;
    notifyListeners();
  }

  void mult5() {
    _counter *= 5;
    notifyListeners();
  }

  bool isPrime() {
    //logica para determinar si es primo

    if (_counter <= 1) {
      return false;
    }
    if (_counter == 2) {
      return true;
    }
    for (int i = 2; i <= sqrt(_counter); i++) {
      if (_counter % i == 0) {
        return false;
      }
    }
    return true; //si llego hasta aca es true
  }
}
