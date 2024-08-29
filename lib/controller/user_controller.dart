import 'package:project_distinction/data/users_data.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/student_model.dart';

Student findStudentById(String id) {
  return students.firstWhere((user) => user.studentId == id);
}

bool verifyUserCredetials(String _username, String password) {
  return students.any((user) =>
      user.password == password &&
      (user.username == _username || user.emailAddress == _username));
}

bool isUserExists(String _username) {
  return students.any(
      (user) => user.emailAddress == _username || user.username == _username);
}

Student getUserByUsernameAndPassword(String _username, String _password) {
  return students.firstWhere((user) =>
      (user.username == _username || user.emailAddress == _password) &&
      user.password == _password);
}

void addStudentToDb(Student _student) {
  students.add(_student);
}

Course getCourseByStudent(String _uid, String _cid) {
  final student = findStudentById(_uid);
  final List<Course> listOfCourses = [
    ...student.listOfMajors[0].optionalCourses,
    ...student.listOfMajors[0].requiredCourses
  ];
  return listOfCourses.firstWhere((course) => course.courseId == _cid);
}
