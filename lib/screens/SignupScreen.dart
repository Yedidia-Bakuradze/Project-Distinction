import 'package:flutter/material.dart';
import 'package:project_distinction/models/major_model.dart';
import 'package:project_distinction/models/student_model.dart';
import 'package:project_distinction/screens/HomeScreen.dart';

class SignupScreen extends StatelessWidget {
  var _firstName = "";
  var _lastName = "";
  var _emailAddress = "";
  var _schoolName = "";
  var _username = "";
  var _password = "";

  SignupScreen({super.key});

  //Create a new global key for the card
  final _formKey = GlobalKey<FormState>();

  //--- The signup logic ---
  void _onSignup(ctx) {
    // Validate the credentials using the validator
    final status = _formKey.currentState!.validate();
    if (!status) {
      return;
    }

    //Saving all the inserted data
    _formKey.currentState!.save();

    //Create a new Student object
    final _newStudent = Student(
        username: _username,
        password: _password,
        firstName: _firstName,
        lastName: _lastName,
        emailAddress: _emailAddress,
        major: Major(
            title: "Computer Science",
            requiredCredits: 120,
            type: "BSc",
            requiredCourses: [],
            optionalCourses: [],
            color: Colors.black,
            imageUrl: ""));

    Student.registerStudent(_newStudent);

    //Move to the dashboard by passing the id to the next screen
    print("New Studnet");

    //Navigation to the home screen
    Navigator.of(ctx).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (ctx) => HomeScreen(currentId: _newStudent.id),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup Form"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            margin: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  //First name:
                  TextFormField(
                    decoration: const InputDecoration(labelText: "First Name"),

                    //Validates the first name field
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "The field cann't be empty";
                      }
                      return null;
                    },

                    //Updates the proper field with the updated value
                    onSaved: (value) {
                      _firstName = value!;
                    },
                  ),
                  const SizedBox(height: 20),

                  //Last name:
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Last Name"),

                    //Validates the last name field
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "The field cann't be empty";
                      }
                      return null;
                    },

                    //Updates the proper field with the updated value
                    onSaved: (value) {
                      _lastName = value!;
                    },
                  ),
                  const SizedBox(height: 20),

                  //Email address:
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "EmailAddress"),

                    //Validates the email address field
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "The field cann't be empty";
                      }
                      if (!value.contains("@")) {
                        return "The email address must contain the @ symbol";
                      }
                      if (value.trim().length < 6) {
                        return "The email address must be at least 6 characters";
                      }
                      return null;
                    },

                    //Updates the proper field with the updated value
                    onSaved: (value) {
                      _emailAddress = value!;
                    },
                  ),
                  const SizedBox(height: 20),

                  //School name
                  TextFormField(
                    decoration: const InputDecoration(labelText: "School Name"),

                    //Validates the school name field
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "The field cann't be empty";
                      }
                      return null;
                    },

                    //Updates the proper field with the updated value
                    onSaved: (value) {
                      _schoolName = value!;
                    },
                  ),
                  const SizedBox(height: 20),

                  //Username:
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Username"),

                    //Validates the username field
                    validator: (_username) {
                      if (_username == null || _username.trim().isEmpty) {
                        return "The field cann't be empty";
                      }
                      if (Student.isUserExists(_username)) {
                        return "The username is already in our system";
                      }
                      if (_username.trim().length < 6) {
                        return "The username must be at least 6 charaters long";
                      }
                      return null;
                    },

                    //Updates the proper field with the updated value
                    onSaved: (value) {
                      _username = value!;
                    },
                  ),
                  const SizedBox(height: 20),

                  //Password:
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Password"),

                    //Validates the password field
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "The field cann't be empty";
                      }
                      if (value.trim().length < 6) {
                        return "The password must be at least 6 charaters";
                      }
                      // TODO: (Issue #2) Add a validator and a warning if the password isnt quite strong
                      return null;
                    },

                    //Updates the proper field with the updated value
                    onSaved: (value) {
                      _password = value!;
                    },
                  ),
                  const SizedBox(height: 50),

                  //Submit button:
                  ElevatedButton(
                    onPressed: () => _onSignup(context),
                    child: const Text("Join Now!"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
