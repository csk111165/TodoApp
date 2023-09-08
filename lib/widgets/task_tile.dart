import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task'),
      trailing: TaskCheckbox(),
      );
  }
}

class TaskCheckbox extends StatefulWidget {
  @override
  State<TaskCheckbox> createState() => _TaskCheckbox();
}

class _TaskCheckbox extends State<TaskCheckbox> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          print("i am pressedd...$value");
          setState(() {
            
            isChecked = value;
          });
        });
  }
}

