import 'package:flutter/material.dart';
import 'package:project_distinction/models/major_model.dart';
import 'package:uuid/uuid.dart';

class Student {
  Student({
    required this.username,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.schoolName,
    this.color = Colors.black,
    this.credits = 0,
    this.imageUrl = "",
    this.listOfMajors = const [],
    this.points = 0,
  }) : studentId = const Uuid().v1();

  String studentId;
  String username;
  String password;

  String imageUrl = "";
  String firstName;
  String lastName;

  String emailAddress;
  String schoolName;

  int points = 0;
  double credits = 0.0;
  Color color = Colors.deepPurpleAccent;
  List<Major> listOfMajors;
}
