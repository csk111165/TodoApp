import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      // wrapping the column with Container will allow the text and icon to appear at the correct location
      // by defining the padding property
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
        child: const Column(
          children: [
            CircleAvatar(
              child: Icon(Icons.list),
              backgroundColor: Colors.white,

              ),
            Text("ToDo"),
      
          ],
        ),
      )
    );
      
  }
}
