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

  Task.copy(Task _task)
      : id = _task.id,
        title = _task.title,
        dueDate = _task.dueDate,
        personalStartDate = _task.personalStartDate,
        personalDuetDate = _task.personalDuetDate,
        docUrl = _task.docUrl,
        isCompleted = _task.isCompleted,
        publicAccess = _task.publicAccess,
        subTasks = _task.subTasks;

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
