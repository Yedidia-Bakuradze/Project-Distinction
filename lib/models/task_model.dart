import 'package:uuid/uuid.dart';

class Task {
  Task({
    required this.title,
    required this.dueDate,
    required this.personalStarttDate,
    required this.personalDuetDate,
    required this.submittedDocUrl,
    required this.isCompleted,
    required this.publicAccess,
    this.subTasks = const [],
  }) : taskId = const Uuid().v1();

  String title;
  DateTime? dueDate;
  DateTime? personalStarttDate;
  DateTime? personalDuetDate;
  String taskId;
  String submittedDocUrl;
  bool isCompleted = false;
  bool publicAccess = false;

  List<Task> subTasks;
}
