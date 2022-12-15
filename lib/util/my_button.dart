import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String myButtonName;
  VoidCallback myButtonPressed;
  MyButton(
      {super.key, required this.myButtonName, required this.myButtonPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: myButtonPressed,
      color: Theme.of(context).primaryColor,
      child: Text(myButtonName),
    );
  }
}
