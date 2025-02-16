import 'package:flutter/material.dart';

class QuantityProvider extends ChangeNotifier {
  int _currentNumber = 1;
  List<double> _baseIngredientsAmounts = [];

  int get currentNUmber => _currentNumber;

  void setBaseIngredientsAmounts(List<double> amounts) {
    _baseIngredientsAmounts = amounts;
    notifyListeners();
  }

//   Update
  List<String> get updateIngredientsAmounts {
    return _baseIngredientsAmounts
        .map<String>((amount) => (amount * _currentNumber).toStringAsFixed(1))
        .toList();
  }

//   Increase serving
  void increaseQuantity() {
    _currentNumber++;
    notifyListeners();
  }

//   Decrease serving

  void decreaseQuantity() {
    if (currentNUmber > 1) {
      _currentNumber--;
      notifyListeners();
    }
  }
}
