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
  }) : courseId = const Uuid().v1();

  String title;
  int credits;
  double totalHourCount;
  String courseId;

  //Final's weight calculation
  double examWeight;
  double quizWeight;
  double assignmentWeight;

  int numOfCalculatedQuizzes;
  int numOfCalculatedAssignment;
}
