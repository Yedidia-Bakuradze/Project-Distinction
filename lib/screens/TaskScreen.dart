import 'package:flutter/material.dart';
import 'package:project_distinction/models/task_model.dart';
import 'package:project_distinction/widgets/TaskWidget.dart';

class TaskScreen extends StatefulWidget {
  TaskScreen({
    super.key,
    required this.task,
  });
  final Task task;
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  late List<Task> _tasks;
  void _onAddAction() {}

  //Navigates to the sub-task's screen
  void navigatetoSubTask(Task subTask) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => TaskScreen(task: subTask)));
  }

  @override
  void initState() {
    super.initState();
    _tasks = [];
    for (Task task in widget.task.subTasks) {
      _tasks.add(task);
    }
  }

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
            pinned: true,
            toolbarHeight:
                60.0, // Increased height for the header when scrolled
            backgroundColor: Colors.amber,
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.task.title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    "${_tasks.length} tasks",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              centerTitle: true,
              background: Image.asset("assets/images/calculusII.jpg",
                  fit: BoxFit.cover),
            ),
          ),

          //Spacing between the appbar and the list
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),

          //The list items that are loaded under the image
          SliverPadding(
            padding: const EdgeInsets.all(5),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (ctx, index) =>
                    TaskWidget(task: _tasks[index], action: navigatetoSubTask),

                childCount: _tasks.length, // Number of assignments
              ),
            ),
          ),
        ],
      ),
    );
  }
}
