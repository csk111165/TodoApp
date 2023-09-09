import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  late String newTaskTitle;
  final Function addTaskCallback; 

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              // to auto enable keyboard pop up
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
