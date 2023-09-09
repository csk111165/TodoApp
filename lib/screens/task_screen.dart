import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:todo_app/models/task.dart';

class TaskScreen extends StatefulWidget {

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [
      Task(name: 'Buy milk', isDone: false),
      Task(name: 'Buy eggs', isDone: true),
      Task(name: 'Buy bread', isDone: true),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        // adding a button
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            // need to do something
            showModalBottomSheet(context: context, builder: (BuildContext context) => AddTaskScreen(
              (newTaskTitle) {
                setState(() {
                  // create a new task
                  tasks.add(Task(name: newTaskTitle));
                });
                // This is to remove the add task screen automatically when the task is added successfully.
                Navigator.pop(context);
              }
            ));
          },
          ),
        // wrapping the column with Container will allow the text and icon to appear at the correct location
        // by defining the padding property
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "ToDo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${tasks.length} Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // botton half part
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                ),
                child: TaskList(tasks),
              ),
            ),
          ],
        ));
  }
}


