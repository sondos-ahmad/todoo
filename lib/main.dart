import 'package:flutter/material.dart';
import 'package:todoo/model/TasksData.dart';
import 'package:todoo/view/TodoList.dart';
import 'package:todoo/view/WelcomeScreen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksData>(
      create: (context)=>TasksData(),
      child: MaterialApp(
        home:WelcomeScreen() ,
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFFf7f5ec),fontFamily: 'IndieFlower',),
      ),
    );
  }
}
