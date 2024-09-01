import 'package:flutter/material.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/exam_model.dart';
import 'package:project_distinction/models/major_model.dart';
import 'package:project_distinction/models/quiz_model.dart';
import 'package:project_distinction/models/student_model.dart';
import 'package:project_distinction/models/task_model.dart';

List<Student> students = [
  Student(
    username: '1',
    password: '1',
    firstName: 'John',
    lastName: 'Doe',
    emailAddress: 'john.doe@example.com',
    schoolName: 'University of Example',
    color: Colors.green,
    credits: 0,
    imageUrl: "",
    listOfMajors: [
      Major(
        title: 'Computer Science',
        requiredCredits: 120,
        type: 'Bachelor of Science',
        majorId: 'CS001',
        requiredCourses: [
          Course(
            title: 'Introduction to Programming',
            credits: 4,
            totalHourCount: 60,
            examWeight: 0.4,
            quizWeight: 0.3,
            assignmentWeight: 0.3,
            numOfCalculatedQuizzes: 3,
            numOfCalculatedAssignment: 5,
            tasks: [
              Task(
                title: 'Programming Assignment 1',
                dueDate: DateTime(2023, 9, 30),
                personalStarttDate: DateTime(2023, 9, 20),
                personalDuetDate: DateTime(2023, 9, 29),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: true,
              ),
            ],
            imageUrl: 'assets/images/intro_programming.jpg',
            color: Colors.orange,
            exams: [
              Exam(
                title: 'Midterm Exam',
                term: 'Fall 2023',
                examDate: DateTime(2023, 10, 15),
              ),
              Exam(
                title: 'Final Exam',
                term: 'Fall 2023',
                examDate: DateTime(2023, 12, 20),
              ),
            ],
            quizzes: [
              Quiz(
                title: 'Quiz 1: Variables and Data Types',
                quizNumber: 1,
              ),
              Quiz(
                title: 'Quiz 2: Control Structures',
                quizNumber: 2,
              ),
            ],
          ),
        ],
        optionalCourses: [
          Course(
            title: 'Calculus I',
            credits: 4,
            totalHourCount: 60,
            examWeight: 0.5,
            quizWeight: 0.25,
            assignmentWeight: 0.25,
            numOfCalculatedQuizzes: 4,
            numOfCalculatedAssignment: 6,
            tasks: [
              Task(
                title: 'Math Problem Set 1',
                dueDate: DateTime(2023, 10, 5),
                personalStarttDate: DateTime(2023, 9, 25),
                personalDuetDate: DateTime(2023, 10, 4),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
                subTasks: [
                  Task(
                    title: 'Sub task 1',
                    dueDate: DateTime(2023, 10, 5),
                    personalStarttDate: DateTime(2023, 9, 25),
                    personalDuetDate: DateTime(2023, 10, 4),
                    submittedDocUrl: '',
                    isCompleted: false,
                    publicAccess: false,
                  ),
                  Task(
                    title: 'Sub task 2',
                    dueDate: DateTime(1992, 10, 5),
                    personalStarttDate: DateTime(2023, 9, 25),
                    personalDuetDate: DateTime(2023, 10, 4),
                    submittedDocUrl: '',
                    isCompleted: false,
                    publicAccess: false,
                  ),
                ],
              ),
              Task(
                title: 'Linear Algebra Assignment',
                dueDate: DateTime(2023, 10, 12),
                personalStarttDate: DateTime(2023, 10, 1),
                personalDuetDate: DateTime(2023, 10, 11),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Calculus II Homework',
                dueDate: DateTime(2023, 10, 18),
                personalStarttDate: DateTime(2023, 10, 8),
                personalDuetDate: DateTime(2023, 10, 17),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Discrete Mathematics Project',
                dueDate: DateTime(2023, 10, 25),
                personalStarttDate: DateTime(2023, 10, 10),
                personalDuetDate: DateTime(2023, 10, 24),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Statistics Data Analysis',
                dueDate: DateTime(2023, 11, 1),
                personalStarttDate: DateTime(2023, 10, 20),
                personalDuetDate: DateTime(2023, 10, 31),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Number Theory Research Paper',
                dueDate: DateTime(2023, 11, 8),
                personalStarttDate: DateTime(2023, 10, 25),
                personalDuetDate: DateTime(2023, 11, 7),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Differential Equations Problem Set',
                dueDate: DateTime(2023, 11, 15),
                personalStarttDate: DateTime(2023, 11, 1),
                personalDuetDate: DateTime(2023, 11, 14),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Geometry Proof Assignment',
                dueDate: DateTime(2023, 11, 22),
                personalStarttDate: DateTime(2023, 11, 8),
                personalDuetDate: DateTime(2023, 11, 21),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Complex Analysis Homework',
                dueDate: DateTime(2023, 11, 29),
                personalStarttDate: DateTime(2023, 11, 15),
                personalDuetDate: DateTime(2023, 11, 28),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Mathematical Modeling Project',
                dueDate: DateTime(2023, 12, 6),
                personalStarttDate: DateTime(2023, 11, 20),
                personalDuetDate: DateTime(2023, 12, 5),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Topology Assignment',
                dueDate: DateTime(2023, 12, 13),
                personalStarttDate: DateTime(2023, 11, 28),
                personalDuetDate: DateTime(2023, 12, 12),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Mathematical Logic Problem Set',
                dueDate: DateTime(2023, 12, 20),
                personalStarttDate: DateTime(2023, 12, 5),
                personalDuetDate: DateTime(2023, 12, 19),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Abstract Algebra Group Theory Assignment',
                dueDate: DateTime(2024, 1, 5),
                personalStarttDate: DateTime(2023, 12, 20),
                personalDuetDate: DateTime(2024, 1, 4),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Numerical Analysis Coding Project',
                dueDate: DateTime(2024, 1, 12),
                personalStarttDate: DateTime(2023, 12, 28),
                personalDuetDate: DateTime(2024, 1, 11),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
              Task(
                title: 'Probability Theory Case Study',
                dueDate: DateTime(2024, 1, 19),
                personalStarttDate: DateTime(2024, 1, 5),
                personalDuetDate: DateTime(2024, 1, 18),
                submittedDocUrl: '',
                isCompleted: false,
                publicAccess: false,
              ),
            ],
            imageUrl: 'assets/images/calculus.jpg',
            color: Colors.purple,
            exams: [
              Exam(
                title: 'Midterm Exam',
                term: 'Fall 2023',
                examDate: DateTime(2023, 10, 1),
              ),
              Exam(
                title: 'Final Exam',
                term: 'Fall 2023',
                examDate: DateTime(2023, 12, 1),
              ),
            ],
            quizzes: [
              Quiz(
                title: 'Quiz 1: Limits',
                quizNumber: 1,
              ),
              Quiz(
                title: 'Quiz 2: Taylor Serise',
                quizNumber: 2,
              ),
            ],
          ),
        ],
        color: Colors.blue,
        imageUrl: 'assets/images/cs.jpg',
      ),
    ],
    points: 0,
  ),
];
