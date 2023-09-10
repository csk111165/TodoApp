import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';


class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    // builder is used to render a large number of list items
    return Consumer<TaskData>(
      //taskData is an instace of TaskData provided by Consumer<TaskData> ..
      builder: (context, taskData, child) {
        return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            // Now we use Provider to get the shared data
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (bool checkboxState) {
              taskData.updateTask(task);
            },  
            longPressCallback: () {
              taskData.delteTask(task);
            },
          );
        },
        // this will allow to iterate through the list by giving the stoppind condition
        itemCount: taskData.taskCount,
      );
      },
      
    );
  }
}
