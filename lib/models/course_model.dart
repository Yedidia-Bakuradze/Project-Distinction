import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_distinction/models/exam_model.dart';
import 'package:project_distinction/models/quiz_model.dart';
import 'package:project_distinction/models/task_model.dart';
import 'package:uuid/uuid.dart';

class Course {
  Course({
    required this.name,
    required this.credits,
    required this.examWeight,
    required this.quizWeight,
    required this.assignmentWeight,
    required this.numOfCalculatedQuizzes,
    required this.numOfCalculatedAssignment,
    required this.tasks,
    required this.imageUrl,
    required this.color,
    required this.exams,
    required this.quizzes,
  }) : id = const Uuid().v1();

  String
      imageUrl; // An image related to this course that would presented as a wallpaper in the course page
  String name; // The name of the coruse
  double credits; // How many credits does this course worth
  String id; // An id assosiacted to an indevidual coruse
  Color color; // A color assosicated to an indevidual coruse

  //Final's weight calculation
  double examWeight;
  double quizWeight;
  double assignmentWeight;

  //The number of quizzes and assignments that would be calculated in the final score
  int numOfCalculatedQuizzes;
  int numOfCalculatedAssignment;

  //List of tasks and quizzes related to the course
  List<Task> tasks;
  List<Quiz> quizzes;
  List<Exam> exams;

  static List<Course> listOfCourses = [
    Course(
      name: "Calculus II",
      credits: 4.0,
      examWeight: 60.0,
      quizWeight: 20.0,
      assignmentWeight: 20.0,
      numOfCalculatedQuizzes: 2,
      numOfCalculatedAssignment: 5,
      tasks: [
        Task(
          title: "Homework 1: Basic mathematics",
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
              title: "Gradient calcuolation",
              dueDate: DateTime(2024, 9, 27),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Try to be like newton but as a jew",
          dueDate: DateTime(2024, 10, 15),
          personalStartDate: DateTime(2024, 10, 1),
          personalDuetDate: DateTime(2024, 10, 14),
          subTasks: [
            Task(
              title: "Get the costum",
              dueDate: DateTime(2024, 10, 5),
              isCompleted: false,
            ),
            Task(
              title: "Find a beard",
              dueDate: DateTime(2024, 10, 10),
              isCompleted: false,
            ),
            Task(
              title:
                  "Remember that you already got one you Chabadnic peace of franch crap",
              dueDate: DateTime(2024, 10, 12),
              isCompleted: false,
            ),
          ],
        ),
      ],
      imageUrl: "assets/images/calculusII.jpg",
      color: Colors.green,
      exams: [
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
      ],
      quizzes: [
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
      ],
    ),
    Course(
      name: "Calculus I",
      credits: 5.0,
      examWeight: 70.0,
      quizWeight: 15.0,
      assignmentWeight: 15.0,
      numOfCalculatedQuizzes: 3,
      numOfCalculatedAssignment: 4,
      tasks: [],
      imageUrl: "calculus.jpg",
      color: Colors.orange,
      exams: [],
      quizzes: [],
    ),
  ];
}
