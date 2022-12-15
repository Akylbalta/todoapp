import 'package:flutter/material.dart';
import 'package:mytodo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  VoidCallback onSave;
  VoidCallback onCancel;
  final controller;
  final String hintText;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(myButtonName: 'Save', myButtonPressed: onSave),
                SizedBox(
                  width: 8,
                ),
                MyButton(myButtonName: 'Cancel', myButtonPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
