import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_distinction/data/users_data.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/student_model.dart';
import 'package:project_distinction/widgets/GridItem.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required this.currentId});

  final String currentId;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Student _student;
  List<Course> _listOfCourses = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      _student = findStudentById(widget.currentId);
    });
    setState(() {
      _listOfCourses = _student.listOfCourses;
    });
  }

  int _selectedIndex = 0;

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
            for (var course in _listOfCourses)
              GridItem(
                courseId: course.courseId,
                title: course.title,
              ),
          ],
        ),
      ),
    );
  }
}
