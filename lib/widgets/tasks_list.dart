import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_app/models/task.dart';




class TaskList extends StatefulWidget {
  const TaskList({super.key});
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
   List<Task> tasks = [
      Task(name: 'Buy milk', isDone: false),
      Task(name: 'Buy eggs', isDone: true),
      Task(name: 'Buy breadddd', isDone: true),
    ];

  @override
  Widget build(BuildContext context) {
   
    // builder is used to render a large number of list items
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (bool checkboxState) {
            print("what is value from callback $checkboxState");
            setState(() {
              tasks[index].toogleDone(checkboxState);
            });
          },  
        );
      },
      // this will allow to iterate through the list by giving the stoppind condition
      itemCount: tasks.length,
    );
  }
}
