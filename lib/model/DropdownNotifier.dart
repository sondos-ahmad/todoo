import 'package:flutter/material.dart';

class DropdownNotifier extends ChangeNotifier {
  String _selectedValue = 'hrs';

  String get selectedValue => _selectedValue;

  void updateValue(String newValue) {
    _selectedValue = newValue;
    notifyListeners();
  }
}