import 'package:flutter/material.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/student_model.dart';
import 'package:project_distinction/models/task_model.dart';
import 'package:project_distinction/screens/NewTaskScreen.dart';
import 'package:project_distinction/screens/TaskScreen.dart';
import 'package:project_distinction/widgets/TaskWidget.dart';

class CourseScreen extends StatefulWidget {
  CourseScreen({
    super.key,
    required this.uid,
    required this.cid,
  });
  final String uid;
  final String cid;

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  late final Course _course;
  late final Student _student;
  late List<Task> _tasks;
  void _onAddAction() {
    print("Activacted");
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewTaskScreen(course: _course),
    );
  }

  //Navigates to the sub-task's screen
  void navigatetoSubTask(Task subTask) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => TaskScreen(task: subTask)));
  }

  @override
  void initState() {
    super.initState();
    _student = Student.getStudentById(widget.uid);
    _course = _student.getCourseById(widget.cid);
    _tasks = [];
    for (Task task in _student.tasks) {
      if (_course.tasks.any((t) => t.id == task.id)) {
        _tasks.add(task);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onAddAction,
        child: const Icon(Icons.add),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            pinned: true,
            toolbarHeight:
                60.0, // Increased height for the header when scrolled
            backgroundColor: _course.color,
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _course.name,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    "${_tasks.length} tasks",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              centerTitle: true,
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
                (ctx, index) =>
                    TaskWidget(task: _tasks[index], action: navigatetoSubTask),

                childCount: _tasks.length, // Number of assignments
              ),
            ),
          ),
        ],
      ),
    );
  }
}
