import 'package:flutter/material.dart';
import 'package:fore_manager/components/stat_tile.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/sample/sample_data.dart';

class Stats extends StatelessWidget {
  Stats({super.key});

  final stats = [
    <String, dynamic>{
      'emoji': "☺️",
      'title': "Projects",
      'count': SampleData.projects.length,
      'color': MyColors.primaryColor
    },
    <String, dynamic>{
      'emoji': "💼",
      'title': "Tasks",
      'count': SampleData.tasks.length,
      'color': Colors.greenAccent
    },
    <String, dynamic>{
      'emoji': "⭐️",
      'title': "Stars",
      'count': 250,
      'color': Colors.orange.shade200
    },
    <String, dynamic>{
      'emoji': "📅",
      'title': "Event",
      'count': 20,
      'color': Colors.pink.shade200
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stats.length,
          itemBuilder: (context, index) {
            final item = stats[index];
            return StatTile(
              emoji: item['emoji'],
              title: item['title'],
              count: item['count'],
              color: item['color'],
            );
          },
        ),
      ),
    );
  }
}
