import 'package:flutter/material.dart';
import 'package:fore_manager/components/page_title.dart';
import 'package:fore_manager/components/recent_tasks.dart';
import 'package:fore_manager/components/stats.dart';

class IndexTab extends StatelessWidget {
  const IndexTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [const PageTitle(), Stats(), const RecentTasks()],
      ),
    );
  }
}
