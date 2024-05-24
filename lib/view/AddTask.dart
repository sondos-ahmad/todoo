import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoo/model/timeNotifier.dart';
import 'package:todoo/model/DropdownNotifier.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Your Task',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffede6d1),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Title :",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Put your task here",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "DeadLine",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Consumer<TimeNotifier>(
                  builder: (context, timeNotifier, child) {
                    return Text(
                      ' ${timeNotifier.selectedTime.format(context)}',
                      style: TextStyle(fontSize: 40),
                    );
                  },
                ),
                SizedBox(
                  width: 27,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => _pickTime(context),
                    child: Text(
                      'Pick Time',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffede6d1)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Duration",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  SizedBox(
                    width: 75,
                    child: TextField(
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w700, height: 1),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(width: 30),
                  Consumer<DropdownNotifier>(
                    builder: (context, dropdownNotifier, child) {
                      return DropdownButton<String>(
                        value: dropdownNotifier.selectedValue,
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            dropdownNotifier.updateValue(newValue);
                          }
                        },
                        items: <String>['hrs', 'mins', 'secs']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 25),
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Description",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              textAlign: TextAlign.justify,
              maxLines: 7,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 8.0, top: 8.0),
                  border: OutlineInputBorder(),
                  hintText: "Write the task details here",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {},
                  child: Text("sondos"),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                )),
              ],
            )
          ]),
        ),
      ),
    );
  }

  Future<void> _pickTime(BuildContext context) async {
    final timeNotifier = Provider.of<TimeNotifier>(context, listen: false);
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: timeNotifier.selectedTime,
    );
    if (picked != null && picked != timeNotifier.selectedTime) {
      timeNotifier.updateTime(picked);
    }
  }
}
