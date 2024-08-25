import 'package:flutter/material.dart';
import 'package:project_distinction/screens/SignupScreen.dart';

class LobbyScreen extends StatelessWidget {
  const LobbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Headerss
            const Text(
              "Welcome to Project Distiction",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 200),

            //---- Signup button ----
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const SignupScreen()));
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(220, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text("Create an account"),
            ),
            const SizedBox(height: 25),

            //---- Login button ----
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Already have an account? login now"),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
