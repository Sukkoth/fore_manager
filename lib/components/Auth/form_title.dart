import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class FormTitle extends StatelessWidget {
  final String text;
  const FormTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Log in to start managing your tasks easily",
      style: GoogleFonts.dmSans(
          color: MyColors.colorWhite,
          fontSize: 30,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.start,
    );
  }
}
