import 'dart:collection';
import 'package:flutter/cupertino.dart';

import 'TaskDetails.dart';
import 'package:provider/provider.dart';
class TasksData extends ChangeNotifier {
  List<TaskDetails> _Tasks =[];
  UnmodifiableListView get tasks{
    return UnmodifiableListView(_Tasks);
  }
  void add (TaskDetails task){
    _Tasks.add(task);
    notifyListeners();
  }
}