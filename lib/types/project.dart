import 'package:flutter/material.dart';

enum ProjectStatus { inProgress, onHold, completed, terminated }

// class Project {
//   final String id;
//   final String emoji;
//   final String name;
//   final String description;
//   final Color color;
//   final DateTime deadline;
//   final DateTime createdAt;
//   final ProjectStatus status;

//   Project({
//     this.emoji = "⭐",
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.color,
//     required this.deadline,
//     required this.createdAt,
//     this.status = ProjectStatus.inProgress,
//   });
// }

class Project {
  String id;
  String name;
  String description;
  Color color;
  DateTime deadline;
  DateTime createdAt;
  String emoji;
  ProjectStatus? status;

  Project(
      {required this.id,
      required this.name,
      required this.description,
      required this.color,
      required this.deadline,
      required this.createdAt,
      this.emoji = "⭐",
      this.status});

  Project.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        description = json['description'],
        color = Color(int.parse(json['color'])),
        deadline = DateTime.parse(json['deadline']),
        createdAt = DateTime.parse(json['createdAt']),
        emoji = json['emoji'],
        status = json["status"] != null
            ? _getStatusFromString(json["status"])
            : ProjectStatus.inProgress;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['color'] = color;
    data['deadline'] = deadline;
    data['createdAt'] = createdAt;
    data['emoji'] = emoji;
    data['status'] = status;
    return data;
  }

  static ProjectStatus _getStatusFromString(String status) {
    switch (status) {
      case "inProgress":
        return ProjectStatus.inProgress;
      case "onHold":
        return ProjectStatus.onHold;
      case "completed":
        return ProjectStatus.completed;
      case "terminated":
        return ProjectStatus.terminated;
      default:
        return ProjectStatus.inProgress;
    }
  }
}
