import 'package:flutter/material.dart';
import 'package:project_distinction/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
    required this.task,
  });
  final Task task;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 50.0,
        child: Row(
          children: [
            Checkbox(
              value: task.isCompleted,
              onChanged: (value) {},
            ),
            Text(task.title),
            if (task.subTasks.length != 0)
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_right))
          ],
        ),
      ),
    );
  }
}
