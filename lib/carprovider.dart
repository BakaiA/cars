import 'package:carapp/model/carlist.model.dart';
import 'package:flutter/cupertino.dart';

import 'model/carclassmodel.dart';

class CarProvider extends ChangeNotifier {
  List<CarModel> cars = data;

  List<CarModel> wastebasket = [];

  List<CarModel> removewastebasket = [];

  void addtoWastebasket({required CarModel model}) {
    wastebasket.add(model);
    wastebasket = wastebasket.toSet().toList();
    notifyListeners();
  }

  void removetoWastebasket({required CarModel model}) {
    removewastebasket.remove(model);
    notifyListeners();
  }
}
