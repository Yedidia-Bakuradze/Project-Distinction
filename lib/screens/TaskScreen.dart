import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({
    super.key,
    required this.tid,
    required this.uid,
    required this.cid,
  });

  final String uid;
  final String tid;
  final String cid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("dsbkd"),
          ),
        ],
      ),
    );
  }
}
