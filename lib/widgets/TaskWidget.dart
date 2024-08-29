import 'package:flutter/material.dart';

class TaskWidget extends StatefulWidget {
  TaskWidget({super.key, required this.isCompleted});
  bool isCompleted;
  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  void _onCompleted(value) {
    setState(() {
      widget.isCompleted = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Checkbox(
          value: widget.isCompleted,
          onChanged: _onCompleted,
        ),
        title: const Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Assignment 1",
                ),
                Text(
                  "3/6 Completed",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_right),
          onPressed: () {},
        ),
      ),
    );
  }
}
