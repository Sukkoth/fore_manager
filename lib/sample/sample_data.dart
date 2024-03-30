import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fore_manager/types/project.dart';
import 'package:fore_manager/types/task.dart';
import 'package:http/http.dart' as http;

class SampleData {
  static Future<List<Project>> getProjects() async {
    final List<Project> projects = [];
    final url =
        Uri.parse("https://my-json-server.typicode.com/Sukkoth/mock/project");
    var response = await http.get(url);

    var json = jsonDecode(response.body);
    // print("🚀 PROJECTS here,  $json");

    for (var project in json) {
      print(project);
      projects.add(Project.fromJson(project));
    }

    print("🚀 PROJECTS, ");
    print(projects);

    return projects;
  }

  static final List<Project> projects = [
    Project(
        id: "pr_1",
        name: "Project Alpha",
        description: "Design and develop a new website for a client.",
        color: const Color(0xFF800080), // Purple
        deadline: DateTime(2024, 4, 20),
        createdAt: DateTime(2024, 3, 5),
        emoji: "⭐",
        status: ProjectStatus.inProgress),
    Project(
        id: "pr_2",
        name: "Product Enhancement",
        description:
            "Implement new features and improvements for the existing product.",
        color: const Color(0xFF008000), // Green
        deadline: DateTime(2024, 4, 10),
        createdAt: DateTime(2024, 2, 28),
        emoji: "🚀"),
    Project(
        id: "pr_3",
        name: "Event Planning",
        description: "Organize and manage a company-wide event.",
        color: const Color(0xFFFFA500), // Orange
        deadline: DateTime(2024, 4, 8),
        createdAt: DateTime(2024, 3, 1),
        emoji: "👋",
        status: ProjectStatus.terminated),
    Project(
        id: "pr_4",
        name: "Research Initiative",
        description:
            "Conduct market research and analysis for a new product line.",
        color: const Color(0xFF000080), // Navy
        deadline: DateTime(2024, 4, 18),
        createdAt: DateTime(2024, 2, 25),
        emoji: "🎉",
        status: ProjectStatus.terminated),
    Project(
        id: "pr_5",
        name: "Training Program",
        description:
            "Develop training materials and conduct workshops for employees.",
        color: const Color(0xFFFF00FF), // Magenta
        deadline: DateTime(2024, 4, 25),
        createdAt: DateTime(2024, 2, 20),
        emoji: "💎",
        status: ProjectStatus.onHold),
    Project(
        id: "pr_6",
        name: "Infrastructure Upgrade",
        description:
            "Upgrade server infrastructure to improve performance and reliability.",
        color: const Color(0xFF800000), // Maroon
        deadline: DateTime(2024, 4, 12),
        createdAt: DateTime(2024, 2, 22),
        emoji: "✨",
        status: ProjectStatus.onHold),
    Project(
        id: "pr_7",
        name: "Budget Analysis",
        description: "Analyze company budget and propose cost-saving measures.",
        color: const Color(0xFF00CED1), // Dark Turquoise
        deadline: DateTime(2024, 4, 28),
        createdAt: DateTime(2024, 2, 18),
        emoji: "🥰",
        status: ProjectStatus.terminated),
    Project(
        id: "pr_8",
        name: "Quality Assurance",
        description:
            "Perform thorough testing and quality assurance for the software release.",
        color: const Color(0xFFDC143C), // Crimson
        deadline: DateTime(2024, 4, 15),
        createdAt: DateTime(2024, 3, 8),
        emoji: "💵",
        status: ProjectStatus.inProgress),
    Project(
        id: "pr_9",
        name: "Content Creation",
        description: "Create engaging content for social media marketing.",
        color: const Color(0xFF800080), // Purple
        deadline: DateTime(2024, 4, 22),
        createdAt: DateTime(2024, 3, 2),
        emoji: "💼"),
    Project(
        id: "pr_10",
        name: "Customer Survey",
        description: "Conduct a survey to gather feedback from customers.",
        color: const Color(0xFF000080), // Navy
        deadline: DateTime(2024, 4, 30),
        createdAt: DateTime(2024, 2, 29),
        emoji: "⛳"),
  ];

  static List<Task> projectTasks(String projectId) {
    return SampleData.tasks
        .where((task) => task.project.id == projectId)
        .toList();
  }

  static int countCompletedTasks(projectId) {
    List<Task> tasks = SampleData.projectTasks(projectId);

    return tasks.where((task) => task.isCompleted == true).toList().length;
  }

  static List<Project> filterProjects(ProjectStatus? filterBy) {
    if (filterBy == null) return SampleData.projects;

    return SampleData.projects
        .where((project) => project.status == filterBy)
        .toList();
  }

  static Project getProject(String projectId) {
    return SampleData.projects.firstWhere((project) => project.id == projectId);
  }

  static void toggleTaskStatus(String taskId) {
    SampleData.tasks
        .map((task) =>
            task.id == taskId ? task.isCompleted = !task.isCompleted : task)
        .toList();
  }

  static List<Task> tasks = [
    Task(
      id: "task_1",
      title: 'Update Project Documentation',
      description:
          'Update project documentation with the latest changes and enhancements.',
      dueDate: DateTime(2024, 4, 18),
      priority: Priority.medium,
      project: SampleData.projects[0],
      createdAt: DateTime(2024, 5, 20),
      isCompleted: true,
    ),
    Task(
      id: "task_2",
      title: 'Test New Feature Integration',
      description:
          'Perform integration testing for the new feature implementation.',
      dueDate: DateTime(2024, 4, 22),
      priority: Priority.high,
      project: SampleData.projects[4],
      createdAt: DateTime(2024, 5, 10),
    ),
    Task(
      id: "task_3",
      title: 'Create Social Media Graphics',
      description:
          'Design graphics for social media posts related to the marketing campaign.',
      dueDate: DateTime(2024, 4, 25),
      priority: Priority.medium,
      project: SampleData.projects[1],
      createdAt: DateTime(2024, 4, 2),
    ),
    Task(
      id: "task_4",
      title: 'Conduct User Surveys',
      description:
          'Prepare and conduct user surveys to gather feedback for product improvements.',
      dueDate: DateTime(2024, 4, 30),
      priority: Priority.low,
      project: SampleData.projects[1],
      createdAt: DateTime(2024, 3, 21),
      isCompleted: true,
    ),
    Task(
      id: "task_5",
      title: 'Refactor Legacy Code',
      description:
          'Refactor legacy codebase to improve maintainability and performance.',
      dueDate: DateTime(2024, 5, 2),
      priority: Priority.high,
      project: SampleData.projects[4],
      createdAt: DateTime(2024, 1, 9),
      isCompleted: true,
    ),
    Task(
      id: "task_6",
      title: 'Update Website Content',
      description:
          'Update website content to reflect recent product updates and features.',
      dueDate: DateTime(2024, 5, 7),
      priority: Priority.medium,
      project: SampleData.projects[1],
      createdAt: DateTime(2024, 1, 5),
    ),
    Task(
      id: "task_7",
      title: 'Optimize Database Queries',
      description:
          'Optimize database queries to reduce response time and improve efficiency.',
      dueDate: DateTime(2024, 5, 10),
      priority: Priority.high,
      project: SampleData.projects[4],
      createdAt: DateTime(2024, 2, 18),
    ),
    Task(
      id: "task_8",
      title: 'Create Training Materials',
      description:
          'Develop training materials for onboarding new team members.',
      dueDate: DateTime(2024, 5, 12),
      priority: Priority.low,
      project: SampleData.projects[4],
      createdAt: DateTime(2024, 2, 11),
    ),
    Task(
      id: "task_9",
      title: 'Implement UI Animations',
      description:
          'Implement UI animations to enhance user experience in the mobile app.',
      dueDate: DateTime(2024, 5, 18),
      priority: Priority.medium,
      project: SampleData.projects[4],
      createdAt: DateTime(2024, 1, 3),
    ),
    Task(
      id: "task_10",
      title: 'Perform Security Audit',
      description:
          'Conduct a security audit to identify and address potential vulnerabilities.',
      dueDate: DateTime(2024, 5, 20),
      priority: Priority.high,
      project: SampleData.projects[4],
      createdAt: DateTime(2024, 4, 23),
    )
  ];
}
