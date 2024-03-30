import 'package:flutter/material.dart';
import 'package:fore_manager/pages/home_tabs/components/filter_by.dart';
import 'package:fore_manager/pages/home_tabs/components/projects_header.dart';
import 'package:fore_manager/pages/home_tabs/components/projects_list.dart';
import 'package:fore_manager/types/project.dart';

class ProjectsTab extends StatefulWidget {
  const ProjectsTab({super.key});

  @override
  State<ProjectsTab> createState() => _ProjectsTabState();
}

class _ProjectsTabState extends State<ProjectsTab> {
  ProjectStatus? filter;

  void setFilter(ProjectStatus? filter) {
    setState(() {
      this.filter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProjectsTabHeader(),
            FilterProjectMenu(
              setFilter: setFilter,
              currentFilter: filter,
            ),
            ProjectsList(filter: filter)
          ],
        ),
      ),
    );
  }
}
