import 'package:flutter/material.dart';
import 'package:project_distinction/widgets/TaskWidget.dart';

class CourseScreen extends StatelessWidget {
  CourseScreen({super.key, required this.currentUserId});

  final String currentUserId;

  void _onAddAction() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onAddAction,
        child: const Icon(Icons.add),
      ),
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
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (ctx, index) => TaskWidget(
                  isCompleted: index / 3 == 1,
                ),
                childCount: 20, // Number of assignments
              ),
            ),
          ),
        ],
      ),
    );
  }
}
