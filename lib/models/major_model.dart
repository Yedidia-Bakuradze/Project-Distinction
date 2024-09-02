import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:uuid/uuid.dart';

class Major {
  Major({
    required this.title,
    required this.requiredCredits,
    required this.type,
    required this.requiredCourses,
    required this.optionalCourses,
    this.color = Colors.black,
    this.imageUrl,
  }) : id = const Uuid().v1();

  String id;
  String title;
  String? imageUrl;
  double requiredCredits;
  String type;

  List<Course> requiredCourses;
  List<Course> optionalCourses;

  Color color;
}
