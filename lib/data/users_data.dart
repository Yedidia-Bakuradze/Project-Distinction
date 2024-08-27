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
        title: "Linear Algebra II",
        credits: 2.5,
        totalHourCount: 40,
        examWeight: 90,
        quizWeight: 5,
        assignmentWeight: 5,
        numOfCalculatedQuizzes: 2,
        numOfCalculatedAssignment: 8,
      ),
      Course(
        title: "Data Structures",
        credits: 3.0,
        totalHourCount: 45,
        examWeight: 70,
        quizWeight: 10,
        assignmentWeight: 20,
        numOfCalculatedQuizzes: 4,
        numOfCalculatedAssignment: 5,
      ),
      Course(
        title: "Operating Systems",
        credits: 3.5,
        totalHourCount: 50,
        examWeight: 80,
        quizWeight: 10,
        assignmentWeight: 10,
        numOfCalculatedQuizzes: 3,
        numOfCalculatedAssignment: 4,
      ),
      Course(
        title: "Database Systems",
        credits: 3.0,
        totalHourCount: 40,
        examWeight: 85,
        quizWeight: 10,
        assignmentWeight: 5,
        numOfCalculatedQuizzes: 2,
        numOfCalculatedAssignment: 6,
      ),
      Course(
        title: "Computer Networks",
        credits: 3.0,
        totalHourCount: 45,
        examWeight: 75,
        quizWeight: 15,
        assignmentWeight: 10,
        numOfCalculatedQuizzes: 3,
        numOfCalculatedAssignment: 5,
      ),
      Course(
        title: "Software Engineering",
        credits: 3.0,
        totalHourCount: 40,
        examWeight: 80,
        quizWeight: 10,
        assignmentWeight: 10,
        numOfCalculatedQuizzes: 2,
        numOfCalculatedAssignment: 4,
      ),
      Course(
        title: "Discrete Mathematics",
        credits: 2.5,
        totalHourCount: 35,
        examWeight: 85,
        quizWeight: 10,
        assignmentWeight: 5,
        numOfCalculatedQuizzes: 2,
        numOfCalculatedAssignment: 6,
      ),
      Course(
        title: "Algorithms",
        credits: 3.0,
        totalHourCount: 50,
        examWeight: 70,
        quizWeight: 20,
        assignmentWeight: 10,
        numOfCalculatedQuizzes: 4,
        numOfCalculatedAssignment: 3,
      ),
      Course(
        title: "Machine Learning",
        credits: 3.5,
        totalHourCount: 60,
        examWeight: 80,
        quizWeight: 15,
        assignmentWeight: 5,
        numOfCalculatedQuizzes: 3,
        numOfCalculatedAssignment: 5,
      ),
      Course(
        title: "Artificial Intelligence",
        credits: 3.5,
        totalHourCount: 55,
        examWeight: 75,
        quizWeight: 15,
        assignmentWeight: 10,
        numOfCalculatedQuizzes: 3,
        numOfCalculatedAssignment: 6,
      ),
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
