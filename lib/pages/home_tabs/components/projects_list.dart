import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/pages/home_tabs/components/project_tile.dart';
import 'package:fore_manager/sample/sample_data.dart';
import 'package:fore_manager/types/project.dart';

class ProjectsList extends StatelessWidget {
  final filter;
  const ProjectsList({super.key, this.filter});

  @override
  Widget build(BuildContext context) {
    List<Project> projects = SampleData.filterProjects(filter);

    return Expanded(
      child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: FutureBuilder(
              future: SampleData.getProjects(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text(
                        "Error while fetching data 🥴",
                        style: TextStyle(fontSize: 18),
                      ),
                    );
                  }
                  if (snapshot.hasData) {
                    return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemCount: projects.length,
                        itemBuilder: (context, index) {
                          final Project project = projects[index];
                          return GridTile(
                              child: ProjectTile(
                            id: project.id,
                            emoji: project.emoji,
                            projectName: project.name,
                            completedTasksCount:
                                SampleData.countCompletedTasks(project.id),
                            totalTasks:
                                SampleData.projectTasks(project.id).length,
                            projectColor: project.color,
                          ));
                        });
                  } else {
                    return const Center(
                      child: Text(
                        "No Projects to display",
                        style: TextStyle(fontSize: 18),
                      ),
                    );
                  }
                }
                return const Center(
                  child:
                      CircularProgressIndicator(color: MyColors.primaryColor),
                );
              })),
    );
  }
}


/**
 * 
 * 
 * GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final Project project = projects[index];
                return GridTile(
                    child: ProjectTile(
                  id: project.id,
                  emoji: project.emoji,
                  projectName: project.name,
                  completedTasksCount:
                      SampleData.countCompletedTasks(project.id),
                  totalTasks: SampleData.projectTasks(project.id).length,
                  projectColor: project.color,
                ));
              })
 */