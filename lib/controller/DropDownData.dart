import 'package:flutter/material.dart';
import 'package:todoo/model/DropDateData.dart';
class DropDownData {
  String _value = dateData.first;
  List<DropdownMenuItem<String>> getDropDown() {
    List<DropdownMenuItem<String>> dropItems = [];
    for (int i = 0; i < dateData.length; i++) {
      String day = dateData[i];
      dropItems.add(DropdownMenuItem(
        child: Text(day),
        value: day,
      ));
    }
    return dropItems;
  }

  String get values {
    return _value;
  }
}