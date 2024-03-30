import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsTabHeader extends StatelessWidget {
  const ProjectsTabHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Projects",
            style:
                GoogleFonts.dmSans(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            child: Icon(
              Icons.search,
              size: 35,
              color: Colors.grey.shade300,
            ),
          )
        ],
      ),
    );
  }
}
