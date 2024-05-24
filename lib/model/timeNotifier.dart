import 'package:flutter/material.dart';

class TimeNotifier extends ChangeNotifier {
  TimeOfDay _selectedTime = TimeOfDay.now();

  TimeOfDay get selectedTime => _selectedTime;

  void updateTime(TimeOfDay newTime) {
    _selectedTime = newTime;
    notifyListeners();
  }
}