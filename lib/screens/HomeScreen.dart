import 'package:flutter/material.dart';
import 'package:project_distinction/controller/user_controller.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/major_model.dart';
import 'package:project_distinction/models/student_model.dart';
import 'package:project_distinction/widgets/GridItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.currentId,
  });

  final String currentId;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Student _student;
  late Major _major;
  late List<Course> _totalListOfCourses;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _student = findStudentById(widget.currentId);
    _major = _student.listOfMajors[0];
    _totalListOfCourses = [
      ..._major.optionalCourses,
      ..._major.requiredCourses
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello ${_student.firstName}"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          // --- Personal ---
          BottomNavigationBarItem(
            label: "Personl",
            icon: Icon(Icons.person),
          ),
          // --- Classes ---
          BottomNavigationBarItem(
            label: "Classes",
            icon: Icon(Icons.class_),
          ),
          // --- Course Maps ---
          BottomNavigationBarItem(
            label: "Course Map",
            icon: Icon(Icons.map),
          ),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),

          // --- Generating the course that user has been taken ---
          children: [
            for (var course in _totalListOfCourses)
              GridItem(
                currentUserId: _student.studentId,
                courseId: course.courseId,
                title: course.title,
              ),
          ],
        ),
      ),
    );
  }
}
