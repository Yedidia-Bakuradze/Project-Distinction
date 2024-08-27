import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  CourseScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            centerTitle: true,
            toolbarHeight:
                100.0, // Increased height for the header when scrolled
            flexibleSpace: FlexibleSpaceBar(
              title: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Calculus II"),
                      Text("Patron"),
                    ],
                  )
                ],
              ),
              background:
                  Image.asset('assets/images/math.jpg', fit: BoxFit.cover),
              titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'The bombing heart of the mathematical field',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text('By: Yehoshua Koch'),
                  SizedBox(height: 8),
                  Text('5 Points'),
                  Text('8/9 Completed'),
                  Text('Avg: 93'),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.green),
                  title: Text('Assignment ${index + 1}'),
                  subtitle: Text('3/6 Completed'),
                  trailing: Icon(Icons.chevron_right),
                );
              },
              childCount: 20, // Number of assignments
            ),
          ),
        ],
      ),
    );
  }
}
