import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      // wrapping the column with SafeArea will allow the text and icon to appear at the correct location
      // otherwise it will be show at top right
      body: SafeArea(
        child: Column(
          children: [
            Icon(Icons.list),
            Text("ToDo"),
      
          ],
        ),
      )
    );
      
  }
}
