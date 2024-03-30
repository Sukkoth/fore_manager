import 'package:flutter/material.dart';
import 'package:fore_manager/components/recent_task_tile.dart';
import 'package:fore_manager/sample/sample_data.dart';
import 'package:fore_manager/types/task.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentTasks extends StatefulWidget {
  const RecentTasks({super.key});

  @override
  State<RecentTasks> createState() => _RecentTasksState();
}

class _RecentTasksState extends State<RecentTasks> {
  final List<Task> recentTasks = SampleData.tasks;

  void changeStatus(index) {
    setState(() {
      recentTasks[index].isCompleted = !recentTasks[index].isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Tasks",
                style: GoogleFonts.dmSans(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.layers,
                color: Colors.grey.shade400,
                size: 40,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: recentTasks.length,
                itemBuilder: (context, index) {
                  final task = recentTasks[index];
                  return RecentTaskTile(
                      changeStatus: () => changeStatus(index), task: task);
                }),
          ),
        ],
      ),
    );
  }
}
