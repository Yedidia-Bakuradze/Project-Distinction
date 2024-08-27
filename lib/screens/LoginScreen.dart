import 'package:flutter/material.dart';
import 'package:project_distinction/data/users_data.dart';
import 'package:project_distinction/screens/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var _formKey = GlobalKey<FormState>();
  var _username = '';
  var _password = '';

  void _onLogin(context) {
    //Validate the input fields as fields
    final status = _formKey.currentState!.validate();
    if (!status) {
      return;
    }
    _formKey.currentState!.save();
    //Validate the input fields as values in db
    if (!verifyUserCredetials(_username, _password)) {
      if (isUserExists(_username)) {
        //TODO: Invoke a message that says "The password isn't correct"
      } else {
        //TODO: Invoke a message that says "The user isn't registered in our system"
      }
      return;
    }
    //Get the student id and pass throught the navigator to the next page
    final _currentStudent = getUserByUsernameAndPassword(_username, _password);
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => HomeScreen(currentId: _currentStudent.studentId)));
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
