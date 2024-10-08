import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/exam_model.dart';
import 'package:project_distinction/models/major_model.dart';
import 'package:project_distinction/models/quiz_model.dart';
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
        enrollingCourses = [..._student.enrollingCourses],
        finishedCourses = [..._student.finishedCourses],
        exams = [..._student.exams],
        quizzes = [..._student.quizzes];
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
  List<Task> tasks = [];
  List<Course> enrollingCourses = [];
  List<Course> finishedCourses = [];
  List<Exam> exams = [];
  List<Quiz> quizzes = [];

  static List<Student> listOfStudents = [
    Student(
      username: "1",
      password: "1",
      firstName: "Yedidia",
      lastName: "Developer",
      emailAddress: "yedidia@gmail.com",
      major: Major(
        title: "Computer Science",
        requiredCredits: 120.0,
        type: "BSc",
        requiredCourses: [], // Courses will be added later
        optionalCourses: [],
        color: Colors.blue,
      ),
      color: Colors.blue,
      credits: 20.0,
      points: 80,
    ),
  ];

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

  void inrollNewCourse(Course course) {
    // Add all its assignment to the student's personal list of tasks
    for (Task task in course.tasks) {
      tasks.add(Task.copy(task));
    }
    // Add all its exams to the student's personal list of exams
    for (Exam exam in course.exams) {
      exams.add(Exam.copy(exam));
    }
    // Add all its quizzes to the student's personal list of quizzes
    for (Quiz quiz in course.quizzes) {
      quizzes.add(Quiz.copy(quiz));
    }
    // Add the course to the list of courses tha
    enrollingCourses.add(course);
  }

  static registerStudent(Student _student) {
    listOfStudents.add(Student.copy(_student));
  }
}

List<Exam> exams = [
  Exam(
    title: "Midterm Exam",
    term: "Fall 2024",
    examDate: DateTime(2024, 11, 10),
  ),
  Exam(
    title: "Final Exam",
    term: "Fall 2024",
    examDate: DateTime(2024, 12, 15),
  ),
];
List<Quiz> quizzes = [
  Quiz(
    title: "Quiz 1: Variables and Data Types",
    quizNumber: 1,
    quizDate: DateTime(2024, 10, 5),
  ),
  Quiz(
    title: "Quiz 2: Control Structures",
    quizNumber: 2,
    quizDate: DateTime(2024, 10, 20),
  ),
];
List<Task> tasks = [
  Task(
    title: "Homework 1: Basic Syntax",
    dueDate: DateTime(2024, 9, 30),
    personalStartDate: DateTime(2024, 9, 15),
    personalDuetDate: DateTime(2024, 9, 29),
    subTasks: [
      Task(
        title: "Complete Chapter 1 Exercises",
        dueDate: DateTime(2024, 9, 25),
        isCompleted: false,
      ),
      Task(
        title: "Implement Simple Calculator",
        dueDate: DateTime(2024, 9, 27),
        isCompleted: false,
      ),
    ],
  ),
  Task(
    title: "Project: Build a Todo App",
    dueDate: DateTime(2024, 10, 15),
    personalStartDate: DateTime(2024, 10, 1),
    personalDuetDate: DateTime(2024, 10, 14),
    subTasks: [
      Task(
        title: "Design the UI",
        dueDate: DateTime(2024, 10, 5),
        isCompleted: false,
      ),
      Task(
        title: "Implement Backend",
        dueDate: DateTime(2024, 10, 10),
        isCompleted: false,
      ),
      Task(
        title: "Testing",
        dueDate: DateTime(2024, 10, 12),
        isCompleted: false,
      ),
    ],
  ),
];
