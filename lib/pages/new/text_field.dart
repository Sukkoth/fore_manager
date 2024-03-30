import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CTextField extends StatelessWidget {
  final String label;
  final String hint;
  final int minLines;
  final int maxLines;

  const CTextField(
      {super.key,
      required this.label,
      required this.hint,
      this.minLines = 1,
      this.maxLines = 1});

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
        const SizedBox(height: 15),
        TextField(
          minLines: minLines,
          maxLines: maxLines,
          style: GoogleFonts.dmSans(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
              hintStyle: GoogleFonts.dmSans(color: Colors.grey.shade500),
              hintText: hint,
              filled: true,
              focusColor: Colors.white,
              fillColor: MyColors.teritiaryColor,
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: MyColors.secondaryLightColor),
                  borderRadius: BorderRadius.circular(15)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: MyColors.secondaryLightColor),
                  borderRadius: BorderRadius.circular(15))),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
