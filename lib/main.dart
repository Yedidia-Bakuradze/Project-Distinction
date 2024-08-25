import 'package:flutter/material.dart';
import 'package:project_distinction/screens/LobbyScreen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Project Distinction",
      home: Scaffold(
        body: Center(
          child: LobbyScreen(),
        ),
      ),
    );
  }
}
