// ignore: constant_identifier_names
import 'package:project_distinction/models/student_model.dart';

List<Student> students = [
  Student(
    emailAddress: "s1@gmail.com",
    firstName: "Firstname 1",
    lastName: "Lastname 1",
    password: "123456",
    schoolName: "JCT",
    username: "su1",
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
