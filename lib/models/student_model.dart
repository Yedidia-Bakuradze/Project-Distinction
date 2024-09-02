import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  Student.copy(Student _student)
      : id = _student.id,
        username = _student.username,
        firstName = _student.firstName,
        lastName = _student.lastName,
        password = _student.password,
        emailAddress = _student.emailAddress,
        points = _student.points,
        color = _student.color,
        credits = _student.credits,
        major = _student.major,
        tasks = _student.tasks,
        enrollingCourses = _student.enrollingCourses,
        finishedCourses = _student.finishedCourses;

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

  static List<Student> listOfStudents = [];

  static Student getStudentById(String _id) {
    return listOfStudents.firstWhere((user) => user.id == _id);
  }

  static Student getStudentByCredential(String _username, String _password) {
    if (!isUserExists(_username)) {
      throw "Username doesnt exists";
    }
    if (!(isUserCredentialsValid(_username, _password))) {
      throw "Credentials are not valid";
    }
    return listOfStudents.firstWhere((user) =>
        (user.username == _username || user.emailAddress == _username) &&
        user.password == _password);
  }

  static bool isUserExists(String _username) {
    return listOfStudents.any((user) => user.username == _username);
  }

  static bool isUserCredentialsValid(String _username, String _password) {
    return listOfStudents.any((user) =>
        (user.username == _username || user.emailAddress == _username) &&
        user.password == _password);
  }

  Course getCourseById(String _id) {
    if (!isCourseCurrentlyInrolled(_id)) {
      throw "The course in not currently inroll";
    }
    return enrollingCourses.firstWhere((course) => course.id == _id);
  }

  bool isCourseCurrentlyInrolled(String _id) {
    return enrollingCourses.any((course) => course.id == _id);
  }

  static registerStudent(Student _student) {
    listOfStudents.add(Student.copy(_student));
  }
}
