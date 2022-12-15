import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  Function(BuildContext)? addDescription;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
    required this.addDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Slidable(
        endActionPane: ActionPane(motion: BehindMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade300,
          ),
          SlidableAction(
            onPressed: addDescription,
            icon: Icons.add,
            backgroundColor: Colors.green,
          )
        ]),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.green,
              ),
              GestureDetector(
                onLongPress: () {},
                child: Text(
                  taskName,
                  style: TextStyle(
                    decoration:
                        taskCompleted ? TextDecoration.lineThrough : null,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
