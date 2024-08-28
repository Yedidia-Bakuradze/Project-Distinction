import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  CourseScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            centerTitle: true,
            toolbarHeight:
                150.0, // Increased height for the header when scrolled
            backgroundColor: Colors.amber,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "This is the floating widget",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              background:
                  Image.asset('assets/images/math.jpg', fit: BoxFit.cover),
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          //The list items that are loaded under the image
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.green),
                  title: Text('Assignment ${index + 1}'),
                  subtitle: Text('3/6 Completed'),
                  trailing: IconButton(
                      onPressed: () {
                        print("pressed");
                      },
                      icon: const Icon(Icons.chevron_right)),
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
