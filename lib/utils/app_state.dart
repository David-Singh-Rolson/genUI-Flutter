import 'package:flutter/material.dart';
import 'package:my_first_app/data/initial_json.dart';

class AppState extends ChangeNotifier {
  List<dynamic> currentJson = initialJson;

  void updateUI(List<dynamic> newJson) {
    currentJson = newJson;
    notifyListeners();
  }
}
