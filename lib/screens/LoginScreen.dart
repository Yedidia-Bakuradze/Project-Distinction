import 'package:flutter/material.dart';
import 'package:project_distinction/models/student_model.dart';
import 'package:project_distinction/screens/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  var _username = '';
  var _password = '';

  //Handles the login process if invoked.
  void _onLogin(context) {
    //Validate the input fields as fields
    final status = _formKey.currentState!.validate();
    if (!status) {
      return;
    }
    _formKey.currentState!.save();
    //Validate the input fields as values in db
    if (!Student.isUserCredentialsValid(_username, _password)) {
      if (Student.isUserExists(_username)) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("The password isn't correct")));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("The user isn't registered in our system")));
      }
      return;
    }
    //Get the student id and pass throught the navigator to the next page
    final _currentStudent =
        Student.getStudentByCredential(_username, _password);
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (ctx) => HomeScreen(currentId: _currentStudent.id),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.all(20),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    //Username field:
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Username / Email address"),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "The field must contain a value";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _username = value!;
                      },
                    ),
                    const SizedBox(height: 30),

                    //Password field:
                    TextFormField(
                      decoration: const InputDecoration(labelText: "Password"),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "The field must contain a value";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),
                    const SizedBox(height: 50),

                    //Submit button:
                    ElevatedButton(
                      onPressed: () => _onLogin(context),
                      child: const Text("Submit"),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
