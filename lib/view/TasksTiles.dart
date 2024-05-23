import 'package:flutter/material.dart';
import'package:todoo/model/TaskDetails.dart';
class TasksTiles extends StatelessWidget {
  String title;
TasksTiles(this.title);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      // trailing: Checkbox(
      //   value: isChecked,
      //   onChanged: onChanged,
      // ),

    );
  }
}
