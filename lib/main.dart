import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/pages/home_page.dart';
import 'package:fore_manager/pages/login_page.dart';
import 'package:fore_manager/pages/new/create_new.dart';
import 'package:fore_manager/pages/new/new_project.dart';
import 'package:fore_manager/pages/new/new_task.dart';
import 'package:fore_manager/pages/onboarding_page.dart';
import 'package:fore_manager/pages/project.dart';
import 'package:fore_manager/pages/register_page.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const ForeManager());
}

final _router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (BuildContext context, state) => const HomePage(),
      routes: [
        GoRoute(
            path: 'login',
            builder: (BuildContext context, state) => const LoginPage()),
        GoRoute(
          path: 'register',
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(
            path: 'project/:id',
            builder: (context, state) => const ProjectViewPage()),
        GoRoute(
            path: 'new',
            builder: (context, state) => const CreateNew(),
            routes: [
              GoRoute(
                  path: 'task', builder: (context, state) => const NewTask()),
              GoRoute(
                path: 'project',
                builder: (context, state) => const NewProject(),
              ),
            ])
      ]),
  GoRoute(
      path: '/onboarding', builder: (context, state) => const OnboardingPage()),
], initialLocation: '/'); //TODO change this to /onboarding

class ForeManager extends StatelessWidget {
  const ForeManager({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: MyColors.secondaryLightColor, // Set status bar color
    ));
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
              bodyLarge: GoogleFonts.dmSans(color: Colors.grey.shade300),
              bodyMedium: GoogleFonts.dmSans(color: Colors.grey.shade300))),
      routerConfig: _router,
    );
  }
}
