import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup Screen"),
      ),
      body: SingleChildScrollView(
        // Move SingleChildScrollView here
        child: Center(
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(labelText: "First Name:"),
                      autocorrect: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(labelText: "Last Name:"),
                      autocorrect: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(labelText: "Email Address:"),
                      autocorrect: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(labelText: "School Name"),
                      autocorrect: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(labelText: "Username"),
                      autocorrect: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(labelText: "Password"),
                      autocorrect: false,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Join Now"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
