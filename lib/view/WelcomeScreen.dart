import 'package:flutter/material.dart';
import 'package:todoo/model/Qoutes.dart';
import 'dart:async';
import 'TodoList.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      // Navigate to the HomeScreen after 3 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => TodoList(),
        ),
      );
    });
    String title = Qoutes().qoute;
    return Scaffold(
      body: Center(
          child: Container(
            margin: EdgeInsets.all(30),
            //color: Color(0xffede6d1),
            decoration: BoxDecoration(
              color: Color(0xffeee8d6),
              boxShadow: [BoxShadow(
               color:  Colors.grey,
                blurRadius: 3,
                spreadRadius: 5
              )]
            ),
            child: Text(
            title,
            style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
        ),
          ),
        ),
      );
  }
}
