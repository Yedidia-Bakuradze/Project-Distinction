import 'dart:ui';

import 'package:project_distinction/models/exam_model.dart';
import 'package:project_distinction/models/quiz_model.dart';
import 'package:project_distinction/models/task_model.dart';
import 'package:uuid/uuid.dart';

class Course {
  Course({
    required this.title,
    required this.credits,
    required this.totalHourCount,
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
    this.specialExam,
  }) : courseId = const Uuid().v1();

  String imageUrl;
  String title;
  double credits;
  double totalHourCount;
  String courseId;

  //Final's weight calculation
  double examWeight;
  double quizWeight;
  double assignmentWeight;

  int numOfCalculatedQuizzes;
  int numOfCalculatedAssignment;
  String? specialExam;
  Color color;

  //List of tasks related to the course
  List<Task> tasks;
  List<Quiz> quizzes;
  List<Exam> exams;
}
