import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/types/project.dart';

class FilterProjectMenu extends StatelessWidget {
  final Function setFilter;
  final ProjectStatus? currentFilter;
  const FilterProjectMenu(
      {super.key, required this.setFilter, this.currentFilter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            FilterByMenu(
                text: "All",
                isActive: currentFilter == null,
                setFilter: setFilter,
                status: null),
            FilterByMenu(
                text: "Active",
                isActive: currentFilter == ProjectStatus.inProgress,
                setFilter: setFilter,
                status: ProjectStatus.inProgress),
            FilterByMenu(
                text: "On Hold",
                isActive: currentFilter == ProjectStatus.onHold,
                setFilter: setFilter,
                status: ProjectStatus.onHold),
            FilterByMenu(
                text: "Terminated",
                isActive: currentFilter == ProjectStatus.terminated,
                setFilter: setFilter,
                status: ProjectStatus.terminated),
          ],
        ),
      ),
    );
  }
}

class FilterByMenu extends StatelessWidget {
  final String text;
  final bool isActive;
  final Function setFilter;
  final ProjectStatus? status;
  const FilterByMenu(
      {super.key,
      required this.text,
      required this.isActive,
      required this.status,
      required this.setFilter});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setFilter(status),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: isActive ? MyColors.primaryColor : MyColors.teritiaryColor,
            borderRadius: BorderRadius.circular(35)),
        width: 130,
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
