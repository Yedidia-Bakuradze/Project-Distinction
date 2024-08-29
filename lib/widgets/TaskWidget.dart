import 'package:flutter/material.dart';
import 'package:project_distinction/controller/user_controller.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/student_model.dart';
import 'package:project_distinction/models/task_model.dart';
import 'package:project_distinction/screens/TaskScreen.dart';

class TaskWidget extends StatefulWidget {
  TaskWidget({
    super.key,
    required this.isCompleted,
    required this.tid,
    required this.uid,
    required this.cid,
  });

  bool isCompleted;
  final String tid;
  final String uid;
  final String cid;

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late Task _task;
  late final Student _student;
  late final Course _course;

  @override
  void initState() {
    super.initState();
    _student = findStudentById(widget.uid);
    _course = getCourseByStudent(widget.uid, widget.cid);
    _task = _course.tasks.firstWhere((task) => task.taskId == widget.tid);
  }

  void _onChecked(value) {
    setState(() {
      _task.isCompleted = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Checkbox(
          value: _task.isCompleted,
          onChanged: _onChecked,
        ),
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_task.title),
                Text(
                  "${_task.subTasks.length} Subtasks",
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_right),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => TaskScreen(
                    tid: _task.taskId,
                    uid: _student.studentId,
                    cid: _course.courseId),
              ),
            );
          },
        ),
      ),
    );
  }
}
