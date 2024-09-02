import 'package:uuid/uuid.dart';

class Exam {
  Exam({
    required this.title,
    required this.term,
    this.examDate,
  }) : examId = const Uuid().v1();

  String title;
  String term;
  String examId;
  double? greade;
  DateTime? examDate;
}
