import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:uuid/uuid.dart';

class Major {
  Major({
    required this.title,
    required this.requiredCredits,
    required this.type,
    required this.majorId,
    required this.requiredCourses,
    required this.optionalCourses,
    required this.color,
    required this.imageUrl,
  }) : majorid = const Uuid().v1();

  String majorid;
  String title;
  String imageUrl;
  double requiredCredits;
  String type;
  String majorId;

  List<Course> requiredCourses;
  List<Course> optionalCourses;

  Color color;
}
