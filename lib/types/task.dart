import 'package:fore_manager/types/project.dart';

enum Priority { low, medium, high }

class Task {
  String id, title, description;
  DateTime dueDate;
  Priority priority;
  bool isCompleted;
  DateTime createdAt;
  Project project;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.priority,
    required this.project,
    required this.createdAt,
    this.isCompleted = false,
  });
}
