import 'package:uuid/uuid.dart';

class Quiz {
  Quiz({
    required this.title,
  }) : quizId = const Uuid().v1();

  String title;
  String quizId;
  DateTime? quizDate;
}
