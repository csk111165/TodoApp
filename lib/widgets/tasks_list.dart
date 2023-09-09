import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';




class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    // builder is used to render a large number of list items
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          // Now we use Provider to get the shared data
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallback: (bool checkboxState) {
            // setState(() {
            //   Provider.of<TaskData>(context).tasks[index].toogleDone();
            // });
          },  
        );
      },
      // this will allow to iterate through the list by giving the stoppind condition
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
