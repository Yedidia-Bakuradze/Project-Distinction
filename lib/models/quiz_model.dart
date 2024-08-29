import 'package:uuid/uuid.dart';

class Quiz {
  Quiz({
    required this.title,
    required this.quizNumber,
  }) : quizId = const Uuid().v1();

  String title;
  String quizId;
  int quizNumber;
  DateTime? quizDate;
}
