import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectViewTitle extends StatelessWidget {
  final String? name;
  const ProjectViewTitle({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name ?? "Project",
      style: GoogleFonts.dmSans(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
