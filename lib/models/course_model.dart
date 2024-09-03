import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_distinction/models/exam_model.dart';
import 'package:project_distinction/models/quiz_model.dart';
import 'package:project_distinction/models/task_model.dart';
import 'package:uuid/uuid.dart';

class Course {
  Course({
    required this.name,
    required this.credits,
    required this.examWeight,
    required this.quizWeight,
    required this.assignmentWeight,
    required this.numOfCalculatedQuizzes,
    required this.numOfCalculatedAssignment,
    required this.tasks,
    required this.imageUrl,
    required this.color,
    required this.exams,
    required this.quizzes,
  }) : id = const Uuid().v1();

  String
      imageUrl; // An image related to this course that would presented as a wallpaper in the course page
  String name; // The name of the coruse
  double credits; // How many credits does this course worth
  String id; // An id assosiacted to an indevidual coruse
  Color color; // A color assosicated to an indevidual coruse

  //Final's weight calculation
  double examWeight;
  double quizWeight;
  double assignmentWeight;

  //The number of quizzes and assignments that would be calculated in the final score
  int numOfCalculatedQuizzes;
  int numOfCalculatedAssignment;

  //List of tasks and quizzes related to the course
  List<Task> tasks;
  List<Quiz> quizzes;
  List<Exam> exams;

  static List<Course> listOfCourses = [
    Course(
      name: "Calculus II",
      credits: 4.0,
      examWeight: 60.0,
      quizWeight: 20.0,
      assignmentWeight: 20.0,
      numOfCalculatedQuizzes: 2,
      numOfCalculatedAssignment: 5,
      tasks: [
        Task(
          title: "Integration Techniques",
          dueDate: DateTime(2024, 10, 25),
          personalStartDate: DateTime(2024, 10, 10),
          personalDuetDate: DateTime(2024, 10, 24),
          subTasks: [
            Task(
              title: "Complete Exercises on Integration by Parts",
              dueDate: DateTime(2024, 10, 18),
              isCompleted: false,
            ),
            Task(
              title: "Solve Problems on Trigonometric Substitution",
              dueDate: DateTime(2024, 10, 20),
              isCompleted: false,
            ),
            Task(
              title: "Integration Practice: Partial Fractions",
              dueDate: DateTime(2024, 10, 23),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Series and Sequences",
          dueDate: DateTime(2024, 11, 05),
          personalStartDate: DateTime(2024, 10, 28),
          personalDuetDate: DateTime(2024, 11, 04),
          subTasks: [
            Task(
              title: "Convergence of Series: Practice Problems",
              dueDate: DateTime(2024, 10, 30),
              isCompleted: false,
            ),
            Task(
              title: "Comparison and Ratio Tests",
              dueDate: DateTime(2024, 11, 01),
              isCompleted: false,
            ),
            Task(
              title: "Power Series Exercises",
              dueDate: DateTime(2024, 11, 03),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Applications of Integration",
          dueDate: DateTime(2024, 11, 12),
          personalStartDate: DateTime(2024, 11, 01),
          personalDuetDate: DateTime(2024, 11, 11),
          subTasks: [
            Task(
              title: "Area Under Curves: Practice Problems",
              dueDate: DateTime(2024, 11, 03),
              isCompleted: false,
            ),
            Task(
              title: "Volume of Solids: Shell and Disc Methods",
              dueDate: DateTime(2024, 11, 07),
              isCompleted: false,
            ),
            Task(
              title: "Work Done by Variable Force: Exercises",
              dueDate: DateTime(2024, 11, 10),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Parametric Equations and Polar Coordinates",
          dueDate: DateTime(2024, 11, 20),
          personalStartDate: DateTime(2024, 11, 10),
          personalDuetDate: DateTime(2024, 11, 19),
          subTasks: [
            Task(
              title: "Plotting Parametric Curves",
              dueDate: DateTime(2024, 11, 12),
              isCompleted: false,
            ),
            Task(
              title: "Converting Between Polar and Cartesian Coordinates",
              dueDate: DateTime(2024, 11, 15),
              isCompleted: false,
            ),
            Task(
              title: "Calculating Area in Polar Coordinates",
              dueDate: DateTime(2024, 11, 18),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Differential Equations",
          dueDate: DateTime(2024, 11, 27),
          personalStartDate: DateTime(2024, 11, 15),
          personalDuetDate: DateTime(2024, 11, 26),
          subTasks: [
            Task(
              title: "Solving First Order Differential Equations",
              dueDate: DateTime(2024, 11, 17),
              isCompleted: false,
            ),
            Task(
              title: "Applications of Differential Equations",
              dueDate: DateTime(2024, 11, 21),
              isCompleted: false,
            ),
            Task(
              title: "Modeling with Differential Equations",
              dueDate: DateTime(2024, 11, 25),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Improper Integrals",
          dueDate: DateTime(2024, 12, 05),
          personalStartDate: DateTime(2024, 11, 25),
          personalDuetDate: DateTime(2024, 12, 04),
          subTasks: [
            Task(
              title: "Practice Problems on Improper Integrals",
              dueDate: DateTime(2024, 11, 28),
              isCompleted: false,
            ),
            Task(
              title: "Convergence Tests for Improper Integrals",
              dueDate: DateTime(2024, 12, 01),
              isCompleted: false,
            ),
            Task(
              title: "Applications of Improper Integrals",
              dueDate: DateTime(2024, 12, 03),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Taylor and Maclaurin Series",
          dueDate: DateTime(2024, 12, 12),
          personalStartDate: DateTime(2024, 12, 01),
          personalDuetDate: DateTime(2024, 12, 11),
          subTasks: [
            Task(
              title: "Finding Taylor Series Expansions",
              dueDate: DateTime(2024, 12, 04),
              isCompleted: false,
            ),
            Task(
              title: "Practice Problems on Maclaurin Series",
              dueDate: DateTime(2024, 12, 08),
              isCompleted: false,
            ),
            Task(
              title: "Convergence and Radius of Convergence",
              dueDate: DateTime(2024, 12, 10),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Multivariable Calculus",
          dueDate: DateTime(2024, 12, 19),
          personalStartDate: DateTime(2024, 12, 10),
          personalDuetDate: DateTime(2024, 12, 18),
          subTasks: [
            Task(
              title: "Partial Derivatives: Exercises",
              dueDate: DateTime(2024, 12, 12),
              isCompleted: false,
            ),
            Task(
              title: "Gradient, Divergence, and Curl",
              dueDate: DateTime(2024, 12, 15),
              isCompleted: false,
            ),
            Task(
              title: "Lagrange Multipliers",
              dueDate: DateTime(2024, 12, 17),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Applications of Series",
          dueDate: DateTime(2024, 12, 25),
          personalStartDate: DateTime(2024, 12, 15),
          personalDuetDate: DateTime(2024, 12, 24),
          subTasks: [
            Task(
              title: "Fourier Series Practice",
              dueDate: DateTime(2024, 12, 17),
              isCompleted: false,
            ),
            Task(
              title: "Series Solutions of Differential Equations",
              dueDate: DateTime(2024, 12, 20),
              isCompleted: false,
            ),
            Task(
              title: "Power Series Method",
              dueDate: DateTime(2024, 12, 23),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Vector Calculus",
          dueDate: DateTime(2025, 01, 05),
          personalStartDate: DateTime(2024, 12, 25),
          personalDuetDate: DateTime(2025, 01, 04),
          subTasks: [
            Task(
              title: "Line Integrals and Green's Theorem",
              dueDate: DateTime(2024, 12, 28),
              isCompleted: false,
            ),
            Task(
              title: "Surface Integrals and Stokes' Theorem",
              dueDate: DateTime(2024, 12, 31),
              isCompleted: false,
            ),
            Task(
              title: "Divergence Theorem",
              dueDate: DateTime(2025, 01, 03),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Homework 1: Basic mathematics",
          dueDate: DateTime(2024, 9, 30),
          personalStartDate: DateTime(2024, 9, 15),
          personalDuetDate: DateTime(2024, 9, 29),
          subTasks: [
            Task(
              title: "Complete Chapter 1 Exercises",
              dueDate: DateTime(2024, 9, 25),
              isCompleted: false,
            ),
            Task(
              title: "Gradient calcuolation",
              dueDate: DateTime(2024, 9, 27),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Try to be like newton but as a jew",
          dueDate: DateTime(2024, 10, 15),
          personalStartDate: DateTime(2024, 10, 1),
          personalDuetDate: DateTime(2024, 10, 14),
          subTasks: [
            Task(
              title: "Get the costum",
              dueDate: DateTime(2024, 10, 5),
              isCompleted: false,
            ),
            Task(
              title: "Find a beard",
              dueDate: DateTime(2024, 10, 10),
              isCompleted: false,
            ),
            Task(
              title:
                  "Remember that you already got one you Chabadnic peace of franch crap",
              dueDate: DateTime(2024, 10, 12),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Numerical Integration",
          dueDate: DateTime(2025, 01, 12),
          personalStartDate: DateTime(2025, 01, 02),
          personalDuetDate: DateTime(2025, 01, 11),
          subTasks: [
            Task(
              title: "Trapezoidal Rule Exercises",
              dueDate: DateTime(2025, 01, 04),
              isCompleted: false,
            ),
            Task(
              title: "Simpson's Rule Problems",
              dueDate: DateTime(2025, 01, 08),
              isCompleted: false,
            ),
            Task(
              title: "Comparing Numerical Methods",
              dueDate: DateTime(2025, 01, 10),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Differential Equations: Modeling",
          dueDate: DateTime(2025, 01, 18),
          personalStartDate: DateTime(2025, 01, 08),
          personalDuetDate: DateTime(2025, 01, 17),
          subTasks: [
            Task(
              title: "Modeling Population Growth",
              dueDate: DateTime(2025, 01, 10),
              isCompleted: false,
            ),
            Task(
              title: "Solving Newton's Law of Cooling",
              dueDate: DateTime(2025, 01, 14),
              isCompleted: false,
            ),
            Task(
              title: "Applications in Economics",
              dueDate: DateTime(2025, 01, 16),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Series Convergence Tests",
          dueDate: DateTime(2025, 01, 25),
          personalStartDate: DateTime(2025, 01, 15),
          personalDuetDate: DateTime(2025, 01, 24),
          subTasks: [
            Task(
              title: "Ratio and Root Tests Practice",
              dueDate: DateTime(2025, 01, 17),
              isCompleted: false,
            ),
            Task(
              title: "Alternating Series Test Problems",
              dueDate: DateTime(2025, 01, 20),
              isCompleted: false,
            ),
            Task(
              title: "Comparison and Limit Comparison Tests",
              dueDate: DateTime(2025, 01, 23),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Applications of Polar Coordinates",
          dueDate: DateTime(2025, 02, 02),
          personalStartDate: DateTime(2025, 01, 22),
          personalDuetDate: DateTime(2025, 02, 01),
          subTasks: [
            Task(
              title: "Graphing Polar Equations",
              dueDate: DateTime(2025, 01, 24),
              isCompleted: false,
            ),
            Task(
              title: "Area Calculation in Polar Coordinates",
              dueDate: DateTime(2025, 01, 27),
              isCompleted: false,
            ),
            Task(
              title: "Arc Length and Surface Area Problems",
              dueDate: DateTime(2025, 01, 30),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Laplace Transforms",
          dueDate: DateTime(2025, 02, 10),
          personalStartDate: DateTime(2025, 01, 30),
          personalDuetDate: DateTime(2025, 02, 09),
          subTasks: [
            Task(
              title: "Laplace Transform Basics",
              dueDate: DateTime(2025, 02, 02),
              isCompleted: false,
            ),
            Task(
              title: "Inverse Laplace Transforms",
              dueDate: DateTime(2025, 02, 06),
              isCompleted: false,
            ),
            Task(
              title: "Applications to Differential Equations",
              dueDate: DateTime(2025, 02, 08),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Parametric Surfaces",
          dueDate: DateTime(2025, 02, 15),
          personalStartDate: DateTime(2025, 02, 05),
          personalDuetDate: DateTime(2025, 02, 14),
          subTasks: [
            Task(
              title: "Understanding Parametric Equations for Surfaces",
              dueDate: DateTime(2025, 02, 07),
              isCompleted: false,
            ),
            Task(
              title: "Surface Area Calculation for Parametric Surfaces",
              dueDate: DateTime(2025, 02, 10),
              isCompleted: false,
            ),
            Task(
              title: "Visualizing Parametric Surfaces",
              dueDate: DateTime(2025, 02, 13),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Fourier Series",
          dueDate: DateTime(2025, 02, 22),
          personalStartDate: DateTime(2025, 02, 12),
          personalDuetDate: DateTime(2025, 02, 21),
          subTasks: [
            Task(
              title: "Introduction to Fourier Series",
              dueDate: DateTime(2025, 02, 14),
              isCompleted: false,
            ),
            Task(
              title: "Computing Fourier Coefficients",
              dueDate: DateTime(2025, 02, 18),
              isCompleted: false,
            ),
            Task(
              title: "Fourier Series Applications",
              dueDate: DateTime(2025, 02, 20),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Convergence and Divergence",
          dueDate: DateTime(2025, 03, 01),
          personalStartDate: DateTime(2025, 02, 19),
          personalDuetDate: DateTime(2025, 02, 28),
          subTasks: [
            Task(
              title: "Identifying Convergent Series",
              dueDate: DateTime(2025, 02, 21),
              isCompleted: false,
            ),
            Task(
              title: "Divergence Tests",
              dueDate: DateTime(2025, 02, 24),
              isCompleted: false,
            ),
            Task(
              title: "Integral Test Problems",
              dueDate: DateTime(2025, 02, 27),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Power Series Representation",
          dueDate: DateTime(2025, 03, 10),
          personalStartDate: DateTime(2025, 02, 28),
          personalDuetDate: DateTime(2025, 03, 09),
          subTasks: [
            Task(
              title: "Finding Power Series Representation",
              dueDate: DateTime(2025, 03, 02),
              isCompleted: false,
            ),
            Task(
              title: "Radius and Interval of Convergence",
              dueDate: DateTime(2025, 03, 05),
              isCompleted: false,
            ),
            Task(
              title: "Taylor and Maclaurin Series Representation",
              dueDate: DateTime(2025, 03, 08),
              isCompleted: false,
            ),
          ],
        ),
        Task(
          title: "Vector Fields",
          dueDate: DateTime(2025, 03, 15),
          personalStartDate: DateTime(2025, 03, 05),
          personalDuetDate: DateTime(2025, 03, 14),
          subTasks: [
            Task(
              title: "Understanding Vector Fields",
              dueDate: DateTime(2025, 03, 07),
              isCompleted: false,
            ),
            Task(
              title: "Divergence and Curl of Vector Fields",
              dueDate: DateTime(2025, 03, 11),
              isCompleted: false,
            ),
            Task(
              title: "Line Integrals in Vector Fields",
              dueDate: DateTime(2025, 03, 13),
              isCompleted: false,
            ),
          ],
        ),
      ],
      imageUrl: "assets/images/calculusII.jpg",
      color: Colors.green,
      exams: [
        Exam(
          title: "Midterm Exam",
          term: "Fall 2024",
          examDate: DateTime(2024, 11, 10),
        ),
        Exam(
          title: "Final Exam",
          term: "Fall 2024",
          examDate: DateTime(2024, 12, 15),
        ),
      ],
      quizzes: [
        Quiz(
          title: "Quiz 1: Variables and Data Types",
          quizNumber: 1,
          quizDate: DateTime(2024, 10, 5),
        ),
        Quiz(
          title: "Quiz 2: Control Structures",
          quizNumber: 2,
          quizDate: DateTime(2024, 10, 20),
        ),
      ],
    ),
    Course(
      name: "Calculus I",
      credits: 5.0,
      examWeight: 70.0,
      quizWeight: 15.0,
      assignmentWeight: 15.0,
      numOfCalculatedQuizzes: 3,
      numOfCalculatedAssignment: 4,
      tasks: [],
      imageUrl: "calculus.jpg",
      color: Colors.orange,
      exams: [],
      quizzes: [],
    ),
  ];
}
