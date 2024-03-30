import 'package:flutter/material.dart';
import 'package:fore_manager/components/project_view/tab_menu.dart';
import 'package:fore_manager/components/project_view/tabs/deadlines.dart';
import 'package:fore_manager/components/project_view/tabs/description.dart';
import 'package:fore_manager/components/project_view/tabs/tasks.dart';
import 'package:fore_manager/components/project_view/title.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/sample/sample_data.dart';
import 'package:go_router/go_router.dart';

class ProjectViewPage extends StatefulWidget {
  const ProjectViewPage({super.key});

  @override
  State<ProjectViewPage> createState() => _ProjectViewPageState();
}

class _ProjectViewPageState extends State<ProjectViewPage> {
  String tab = 'tasks';

  void setTab(String tab) {
    setState(() {
      this.tab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    final projectId = GoRouterState.of(context).pathParameters["id"];
    final project = SampleData.getProject(projectId!);

    Map tabs = {
      "tasks": const ProjectTasks(),
      "description": const ProjectDescription(),
      "deadlines": const ProjectDeadlines()
    };

    return Scaffold(
        backgroundColor: MyColors.secondaryColor,
        appBar: AppBar(
          backgroundColor: MyColors.secondaryColor,
          elevation: 0,
          leading: GestureDetector(
            onTap: () => {context.pop()},
            child: Center(
                child: Container(
              padding: const EdgeInsets.all(15),
              child: const Icon(
                size: 20,
                Icons.arrow_back,
                color: MyColors.primaryColor,
              ),
            )),
          ),
          centerTitle: true,
          title: Text(
            "Projects",
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w400),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectViewTitle(name: project.name),
              ProjectViewTabMenu(
                currentTab: tab,
                setTab: setTab,
              ),
              tabs[tab]
            ],
          ),
        ));
  }
}
