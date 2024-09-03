import 'package:flutter/material.dart';
import 'package:project_distinction/models/task_model.dart';

class TaskWidget extends StatefulWidget {
  TaskWidget({
    super.key,
    required this.task,
    required this.action,
  });
  final Task task;
  void Function(Task) action;

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  void _onCompletedTask(value) {
    setState(() {
      widget.task.isCompleted = !widget.task.isCompleted;
    });
  }

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
              value: widget.task.isCompleted,
              onChanged: _onCompletedTask,
            ),
            Text(widget.task.title),
            if (widget.task.subTasks.isNotEmpty)
              IconButton(
                onPressed: () {
                  widget.action(widget.task);
                },
                icon: const Icon(
                  Icons.arrow_right,
                ),
              )
          ],
        ),
      ),
    );
  }
}
