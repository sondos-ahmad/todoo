import 'package:flutter/material.dart';
import 'package:todoo/controller/DropDownData.dart';
import 'package:todoo/view/TasksTiles.dart';
import 'package:todoo/model/TasksData.dart';
import 'package:provider/provider.dart';
import 'AddTask.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});
  @override
  Widget build(BuildContext context) {
    final drop = DropDownData();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffede6d1),
          title: Center(
               child: Text("Today's Todo")
            ),
          ),
        body: Consumer<TasksData>(
          builder: (context, Task, child) {
            return Task.tasks.length == 0
                ?  GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTask()));
              },
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_circle_outline,color: Colors.grey,),
                          Text(
                          "Tap here to Start",
                          style: TextStyle(fontWeight: FontWeight.w700,color: Colors.grey),
                  ),
                        ],
                      ),
                    ))
                : ListView.builder(
                    itemBuilder: (context, index) {
                      return TasksTiles(Task.tasks[index].title);
                    },
                    itemCount: Task.tasks.length,
                  );
          },
        ));
  }
}
