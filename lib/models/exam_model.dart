import 'package:uuid/uuid.dart';

class Exam {
  Exam({
    required this.title,
  }) : examId = const Uuid().v1();

  String title;
  String examId;
  DateTime? examDate;
}
