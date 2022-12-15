import 'package:flutter/material.dart';

class TaskDescription extends StatelessWidget {
  String taskName;

  TaskDescription(this.taskName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(taskName),
      ),
    );
  }
}
