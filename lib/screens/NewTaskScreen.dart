import 'package:flutter/material.dart';
import 'package:project_distinction/models/course_model.dart';
import 'package:project_distinction/models/task_model.dart';

class NewTaskScreen extends StatefulWidget {
  NewTaskScreen({
    super.key,
    required this.course,
  });

  Course course;
  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  DateTime? _startDate;
  DateTime? _endDate;

  final _titleController = TextEditingController();

  void selectStartDate() async {
    final now = DateTime.now();
    final earlyDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: earlyDate,
        lastDate: now);
    if (pickedDate == null) {
      return;
    }
    setState(() {
      _startDate = pickedDate;
    });
  }

  void selectEndDate() async {
    final now = DateTime.now();
    final earlyDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: earlyDate,
        lastDate: now);
    if (pickedDate == null) {
      return;
    }
    setState(() {
      _endDate = pickedDate;
    });
  }

  void onSubmitTask(ctx) {
    // Validate the values
    final _title = _titleController.text;
    if (_title == null || _title.trim().isEmpty) {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          content: Text("The title must contain a value"),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }
    // Add to db
    final task = Task(
      title: _title,
      personalStartDate: _startDate,
      personalDuetDate: _endDate,
    );
    widget.course.tasks.add(task);
    // Clear the screen and prepar for the next one
    clear();
  }

  clear() {
    setState(() {
      _titleController.text = "";
      _startDate = null;
      _endDate = null;
    });
    ScaffoldMessenger.of(context).clearSnackBars();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return SizedBox(
      height: 600,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, keyboardSpace + 16),
            child: Column(
              children: [
                //Expense Title
                TextField(
                  maxLength: 50,
                  controller: _titleController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    label: Text(
                      "Title",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                const SizedBox(height: 19),
                //Second row
                Row(
                  children: [
                    //Space
                    const SizedBox(width: 16),

                    //Date picker - Start Date
                    Expanded(
                      child: Column(
                        children: [
                          const Text("Start date"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              _startDate == null
                                  ? Text("No date selected")
                                  : Text(
                                      "${_startDate!.day} / ${_startDate!.month} / ${_startDate!.year}"),
                              IconButton(
                                onPressed: () {
                                  selectStartDate();
                                },
                                icon: const Icon(Icons.calendar_month),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Date picker - End Date
                    Expanded(
                      child: Column(
                        children: [
                          const Text("Due date"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              _endDate == null
                                  ? Text("No date selected")
                                  : Text(
                                      "${_endDate!.day} / ${_endDate!.month} / ${_endDate!.year}"),
                              IconButton(
                                onPressed: () {
                                  selectEndDate();
                                },
                                icon: const Icon(Icons.calendar_month),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => onSubmitTask(context),
                  child: const Text(
                    "Submit",
                  ),
                ),
                //Buttons
              ],
            ),
          ),
        ),
      ),
    );
  }
}
