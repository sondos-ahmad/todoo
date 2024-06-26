import 'package:flutter/material.dart';
import 'package:todoo/model/TasksData.dart';
import 'package:todoo/model/timeNotifier.dart';
import 'package:provider/provider.dart';
import 'package:todoo/view/WelcomeScreen.dart';
import 'package:todoo/model/DropdownNotifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TasksData>(create: (context) => TasksData()),
        ChangeNotifierProvider<TimeNotifier>(
            create: (context) => TimeNotifier()),
    ChangeNotifierProvider<DropdownNotifier>(
    create: (context) => DropdownNotifier())
      ],
      child: MaterialApp(
        home: WelcomeScreen(),
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFFf7f5ec),
            fontFamily: 'IndieFlower',
            useMaterial3: true),
      ),
    );
  }
}
