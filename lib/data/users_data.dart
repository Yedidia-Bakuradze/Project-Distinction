// ignore: constant_identifier_names
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/student_model.dart';

List<Student> students = [
  Student(
    emailAddress: "yedidia@gmail.com",
    firstName: "Yedidia",
    lastName: "Bakuradze",
    password: "123456",
    schoolName: "JCT",
    username: "yedidia",
    courses: [
      Course(
        title: "Calculus II",
        credits: 5,
        totalHourCount: 55,
        examWeight: 80,
        quizWeight: 10,
        assignmentWeight: 10,
        numOfCalculatedQuizzes: 1,
        numOfCalculatedAssignment: 10,
      ),
      Course(
        title: "Linear Algebra II",
        credits: 2.5,
        totalHourCount: 40,
        examWeight: 90,
        quizWeight: 5,
        assignmentWeight: 5,
        numOfCalculatedQuizzes: 2,
        numOfCalculatedAssignment: 8,
      )
    ],
  ),
  Student(
    emailAddress: "s2@gmail.com",
    firstName: "Firstname 2",
    lastName: "Lastname 2",
    password: "123456",
    schoolName: "Broklyn",
    username: "su2",
  ),
  Student(
    emailAddress: "s1@gmail.com",
    firstName: "Firstname 3",
    lastName: "Lastname 3",
    password: "123456",
    schoolName: "NYC",
    username: "su3",
  ),
  Student(
    emailAddress: "s1@gmail.com",
    firstName: "Firstname 4",
    lastName: "Lastname 4",
    password: "123456",
    schoolName: "Harward",
    username: "su4",
  ),
  Student(
    emailAddress: "s1@gmail.com",
    firstName: "Firstname 5",
    lastName: "Lastname 5",
    password: "123456",
    schoolName: "Azriaely",
    username: "su5",
  ),
  Student(
    emailAddress: "s1@gmail.com",
    firstName: "Firstname 6",
    lastName: "Lastname 6",
    password: "123456",
    schoolName: "Me",
    username: "su6",
  ),
  Student(
    emailAddress: "s1@gmail.com",
    firstName: "Firstname 7",
    lastName: "Lastname 7",
    password: "123456",
    schoolName: "HomeSchooled",
    username: "su7",
  ),
];

//Returns a boolean value if there is a user with that username
bool ifAny(String _username) {
  return students.any((user) => user.username == _username);
}

Student findStudentById(String _id) {
  print("Id: ${_id}");
  final res = students.firstWhere((user) => user.studentId == _id);
  return res;
}

Student getUserByUsernameAndPassword(String _username, String _password) {
  return students.firstWhere((user) => ((user.emailAddress == _username) ||
      (user.username == _username) && user.password == _password));
}

void addStudentToDb(Student _student) {
  print(_student);
  print(_student.firstName);
  students.add(_student);
}

bool isUserExists(String _username) {
  return students.any(
      (user) => user.username == _username || user.emailAddress == _username);
}

bool verifyUserCredetials(String _username, String _password) {
  for (final student in students) {
    if (student.username == _username || student.emailAddress == _username) {
      if (student.password == _password) {
        return true;
      }
    }
  }
  return false;
}
