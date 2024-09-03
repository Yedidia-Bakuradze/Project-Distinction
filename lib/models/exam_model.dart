import 'package:uuid/uuid.dart';

class Exam {
  Exam({
    required this.title,
    required this.term,
    this.examDate,
  }) : examId = const Uuid().v1();

  Exam.copy(Exam _exam)
      : title = _exam.title,
        term = _exam.term,
        examId = _exam.examId,
        greade = _exam.greade,
        examDate = _exam.examDate;

  String title;
  String term;
  String examId;
  double? greade;
  DateTime? examDate;
}
