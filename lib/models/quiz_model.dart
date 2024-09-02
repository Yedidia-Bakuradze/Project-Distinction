import 'package:uuid/uuid.dart';

class Quiz {
  Quiz({
    required this.title,
    required this.quizNumber,
    this.quizDate,
  }) : quizId = const Uuid().v1();

  String title;
  String quizId;
  int quizNumber;
  double? grade;
  DateTime? quizDate;
}
