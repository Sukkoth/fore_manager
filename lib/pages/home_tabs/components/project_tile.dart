import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:go_router/go_router.dart';

class ProjectTile extends StatelessWidget {
  final String id;
  final String emoji, projectName;
  final int totalTasks;
  final int completedTasksCount;
  final Color projectColor;

  const ProjectTile(
      {super.key,
      required this.id,
      required this.emoji,
      required this.projectName,
      required this.totalTasks,
      required this.completedTasksCount,
      this.projectColor = MyColors.primaryColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/project/$id'),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        width: 170,
        height: 190,
        decoration: BoxDecoration(
            color: MyColors.secondaryLightColor,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: MyColors.secondaryColor),
              child: Center(
                child: Text(
                  emoji,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  projectName,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "$totalTasks Tasks",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),
                //if the project has no tasks, do not display the progress bar
                if (totalTasks > 0)
                  LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    color: projectColor,
                    borderRadius: BorderRadius.circular(12),
                    value:
                        completedTasksCount.toDouble() / totalTasks.toDouble(),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
