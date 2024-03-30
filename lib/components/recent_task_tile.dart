import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/types/task.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentTaskTile extends StatelessWidget {
  final Task task;
  final VoidCallback changeStatus;
  final bool hideProject;
  const RecentTaskTile(
      {super.key,
      required this.task,
      required this.changeStatus,
      this.hideProject = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MyColors.secondaryLightColor,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
              value: task.isCompleted,
              onChanged: (value) {
                changeStatus();
              },
              activeColor: MyColors.primaryColor,
              shape: const CircleBorder(side: BorderSide(color: Colors.white)),
            ),
          ),
          GestureDetector(
            onTap: () => changeStatus(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!hideProject)
                  Text(
                    task.project.name,
                    style: GoogleFonts.dmSans(color: Colors.white),
                  ),
                if (!hideProject) const SizedBox(height: 7),
                Text(
                  task.title,
                  style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontSize: 18,
                      decoration: task.isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
