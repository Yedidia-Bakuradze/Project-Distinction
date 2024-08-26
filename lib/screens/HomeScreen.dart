import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_distinction/data/users_data.dart';
import 'package:project_distinction/models/student_model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required this.currentId});

  final String currentId;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Student _student;
  @override
  void initState() {
    super.initState();
    _student = findStudentById(widget.currentId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello ${_student.firstName}"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Text("Todo"),
          ),
        ],
      ),
    );
  }
}
