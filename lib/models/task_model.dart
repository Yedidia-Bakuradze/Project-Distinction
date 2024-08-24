class Task {
  Task({
    required this.taskId,
    required this.title,
    DateTime? personalDueTime_,
    required this.isPubliclyAvailable,
  }) : isCompleted = false;

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
