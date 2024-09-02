import 'package:flutter/material.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/student_model.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
    required this.uid,
    required this.cid,
    required this.tid,
  });

  final String uid;
  final String cid;
  final String tid;

  @override
  Widget build(BuildContext context) {
    Student _student = Student.getStudentById(uid);
    Course _course = _student.getCourseById(cid);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 50.0,
        child: Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
