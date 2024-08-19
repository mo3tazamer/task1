import 'package:flutter/material.dart';
import '../../../domain/entites/oil_model.dart';

class Cart extends ChangeNotifier {
  List<CarOil> carOilListCart = [];

  void addCart(CarOil carOil) {
    // if (!cartList.contains(carOil)) {
    //
    // }
    carOilListCart.add(carOil);
    notifyListeners();
  }

  void removeCart(CarOil carOil) {
    // if(cartList.contains(carOil)) {
    //
    // }
    carOilListCart.remove(carOil);
    notifyListeners();
  }

  int get cartCount => carOilListCart.length;
}
