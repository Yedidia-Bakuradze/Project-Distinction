import 'package:uuid/uuid.dart';

class Quiz {
  Quiz({
    required this.title,
    required this.quizNumber,
    this.quizDate,
  }) : quizId = const Uuid().v1();

  Quiz.copy(Quiz _quiz)
      : title = _quiz.title,
        quizId = _quiz.quizId,
        quizNumber = _quiz.quizNumber,
        grade = _quiz.grade,
        quizDate = _quiz.quizDate;

  String title;
  String quizId;
  int quizNumber;
  double? grade;
  DateTime? quizDate;
}
