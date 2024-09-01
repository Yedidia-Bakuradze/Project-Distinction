import 'package:flutter/material.dart';
import 'package:project_distinction/controller/user_controller.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/student_model.dart';

class CourseScreen extends StatefulWidget {
  CourseScreen({
    super.key,
    required this.userId,
    required this.courseId,
  });
  final String userId;
  final String courseId;

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  late final Course _course;
  late final Student _student;
  void _onAddAction() {}

  @override
  void initState() {
    super.initState();
    _student = findStudentById(widget.userId);
    _course = getCourseByStudent(_student.studentId, widget.courseId);
  }

  @override
  Widget build(BuildContext context) {
    print(_course.courseId);
    print(_course.courseId);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onAddAction,
        child: const Icon(Icons.add),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            centerTitle: true,
            toolbarHeight:
                80.0, // Increased height for the header when scrolled
            backgroundColor: _course.color,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                _course.title,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              background: Image.asset(_course.imageUrl, fit: BoxFit.cover),
            ),
          ),

          //Spacing between the appbar and the list
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),

          //The list items that are loaded under the image
          SliverPadding(
            padding: const EdgeInsets.all(5),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (ctx, index) => Text("Task Numebr ${index}"),

                childCount: _course.tasks.length, // Number of assignments
              ),
            ),
          ),
        ],
      ),
    );
  }
}
