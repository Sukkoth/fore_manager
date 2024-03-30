import 'package:flutter/material.dart';
import 'package:fore_manager/components/recent_task_tile.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/sample/sample_data.dart';
import 'package:go_router/go_router.dart';

class ProjectTasks extends StatefulWidget {
  const ProjectTasks({super.key});

  @override
  State<ProjectTasks> createState() => _ProjectTasksState();
}

class _ProjectTasksState extends State<ProjectTasks> {
  void toggleTask(taskId) {
    print("🚀🚀 Toggle for $taskId");
    setState(() {
      SampleData.toggleTaskStatus(taskId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final projectId = GoRouterState.of(context).pathParameters["id"]!;

    final projectTasks = SampleData.projectTasks(projectId);

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "To Do",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          GestureDetector(
            onTap: () {
              context.go('/new/task', extra: {
                "projectId": projectId,
                "backTo": "/project/$projectId"
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 50,
              decoration: BoxDecoration(
                  color: MyColors.teritiaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                  child: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              )),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: projectTasks.length,
              itemBuilder: (context, index) {
                return RecentTaskTile(
                  hideProject: true,
                  task: projectTasks[index],
                  changeStatus: () {
                    toggleTask(projectTasks[index].id);
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
