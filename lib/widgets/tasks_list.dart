import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_app/models/task.dart';




class TaskList extends StatefulWidget {

  final List<Task> tasks;

  TaskList(this.tasks);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
   

  @override
  Widget build(BuildContext context) {
   
    // builder is used to render a large number of list items
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          // since tasks is pulled out from the build method and put into TaskList staefulwidget class above,
          // the task will be accessed via widget(which represents a stateful widget)
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (bool checkboxState) {
            setState(() {
              widget.tasks[index].toogleDone();
            });
          },  
        );
      },
      // this will allow to iterate through the list by giving the stoppind condition
      itemCount: widget.tasks.length,
    );
  }
}
