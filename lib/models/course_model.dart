import 'dart:ui';

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
}
