import 'package:flutter/material.dart';
import 'package:project_distinction/screens/CourseScreen.dart';

class CourseGridItem extends StatelessWidget {
  CourseGridItem({
    super.key,
    required this.title,
    required this.cid,
    required this.uid,
  });

  final String uid;
  var title = '';
  var cid = '';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      //Navigation to a new page
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => CourseScreen(
              uid: uid,
              cid: cid,
            ),
          ),
        );
      },

      //The background color
      splashColor: Colors.black12,
      borderRadius: BorderRadius.circular(16),

      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 191, 57, 214),
              Colors.deepPurple,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
