import 'package:project_distinction/models/course_model.dart';
import 'package:uuid/uuid.dart';

class Student {
  Student(
      {required this.username,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.emailAddress,
      required this.schoolName,
      courses})
      : studentId = const Uuid().v1(),
        listOfCourses = courses ?? []; // Time baed generated random id

  String studentId;
  String username;
  String password;

  String firstName;
  String lastName;

  String emailAddress;
  String schoolName;

  int points = 0;

  List<Course> listOfCourses;
}
