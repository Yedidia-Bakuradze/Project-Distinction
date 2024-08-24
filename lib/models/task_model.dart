import 'package:uuid/uuid.dart';

class Task {
  Task({
    required this.title,
    DateTime? personalDueTime_,
    required this.isPubliclyAvailable,
  })  : isCompleted = false,
        taskId = const Uuid().v1();

  String taskId; //UUID Init
  String title;
  DateTime? recommendedStartDate;
  DateTime? dueDate;

  //The personal zone
  bool isCompleted;
  String? submittedDoc;
  DateTime? personalDueTime;
  bool isPubliclyAvailable;
}
