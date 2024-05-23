import 'package:flutter/material.dart';
class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Your Task'), backgroundColor: Color(0xffede6d1)),
      body: Center(child: Text("Task title")),
    );
  }
}
