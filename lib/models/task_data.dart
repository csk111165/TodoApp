
import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';


class TaskData extends ChangeNotifier {
  
    List<Task> tasks = [
      Task(name: 'Buy milk', isDone: false),
      Task(name: 'Buy eggs', isDone: true),
      Task(name: 'Buy bread', isDone: true),
    ];

    int get taskCount {
      return tasks.length;

    }

    // to add the new task
    void addTask (String newTaskTitle){
      final task = Task(name: newTaskTitle);
      tasks.add(task);
      // this is predefined method inside the provider module which is required to call to update
      // all the listener that value has been changed.
      notifyListeners();
    }

    void updateTask(Task task) {
      task.toogleDone();
      notifyListeners();
    }

}