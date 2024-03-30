import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/sample/sample_data.dart';
import 'package:fore_manager/types/project.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsSelector extends StatelessWidget {
  final String label;
  final String hint;
  final String? defaultProjectId;
  const ProjectsSelector(
      {super.key,
      required this.label,
      required this.hint,
      this.defaultProjectId});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.dmSans(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        DropdownButtonFormField(
            padding: const EdgeInsets.only(top: 10),
            decoration: InputDecoration(
                filled: true,
                fillColor: MyColors.teritiaryColor,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: MyColors.teritiaryColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: MyColors.teritiaryColor))),
            dropdownColor: MyColors.teritiaryColor,
            borderRadius: BorderRadius.circular(12),
            hint: Text(
              hint,
              style: GoogleFonts.dmSans(color: Colors.grey.shade500),
            ),
            style: GoogleFonts.dmSans(color: Colors.white, fontSize: 18),
            focusColor: MyColors.primaryColor,
            isExpanded: true,
            value: defaultProjectId,
            items: SampleData.projects
                .map<DropdownMenuItem<String>>((Project project) {
              return DropdownMenuItem<String>(
                value: project.id,
                child: Text(project.name),
              );
            }).toList(),
            onChanged: (val) {
              print("selected 🚀🚀🚀 $val");
            }),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
