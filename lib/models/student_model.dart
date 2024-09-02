import 'package:flutter/material.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/major_model.dart';
import 'package:project_distinction/models/task_model.dart';
import 'package:uuid/uuid.dart';

class Student {
  Student({
    required this.username,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.major,
    this.color = Colors.black,
    this.credits = 0,
    this.points = 0,
    this.enrollingCourses = const [],
    this.finishedCourses = const [],
    this.tasks = const [],
  }) : id = const Uuid().v1();

  String id;
  String username;
  String firstName;
  String lastName;
  String password;
  String emailAddress;

  int points;
  Color color = Colors.deepPurpleAccent;

  double credits;
  Major major;
  List<Task> tasks;
  List<Course> enrollingCourses;
  List<Course> finishedCourses;
}
