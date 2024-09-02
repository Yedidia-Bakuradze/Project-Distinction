import 'package:uuid/uuid.dart';

class Task {
  Task({
    required this.title,
    required this.dueDate,
    this.isCompleted = false,
    this.publicAccess = false,
    this.docUrl,
    this.personalStartDate,
    this.personalDuetDate,
    this.subTasks = const [],
  }) : id = const Uuid().v1();

  String id;
  String title;

  DateTime? dueDate;
  DateTime? personalStartDate;
  DateTime? personalDuetDate;
  String? docUrl;

  bool isCompleted;
  bool publicAccess;

  List<Task> subTasks;
}
