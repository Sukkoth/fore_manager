import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';

class ProjectViewTabMenu extends StatelessWidget {
  final String currentTab;
  final Function setTab;
  const ProjectViewTabMenu(
      {super.key, required this.setTab, required this.currentTab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
      child: SizedBox(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            FilterByMenu(
              text: "Tasks",
              isActive: currentTab == "tasks",
              setTab: setTab,
            ),
            FilterByMenu(
              text: "Description",
              isActive: currentTab == "description",
              setTab: setTab,
            ),
            FilterByMenu(
              text: "Deadlines",
              isActive: currentTab == "deadlines",
              setTab: setTab,
            ),
          ],
        ),
      ),
    );
  }
}

class FilterByMenu extends StatelessWidget {
  final String text;
  final bool isActive;
  final Function setTab;
  const FilterByMenu(
      {super.key,
      required this.text,
      required this.isActive,
      required this.setTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setTab(text.toLowerCase()),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: isActive ? MyColors.primaryColor : MyColors.teritiaryColor,
            borderRadius: BorderRadius.circular(35)),
        width: 140,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: isActive ? Colors.grey.shade800 : Colors.grey.shade500,
              fontWeight: FontWeight.bold,
              fontSize: 17),
        )),
      ),
    );
  }
}
