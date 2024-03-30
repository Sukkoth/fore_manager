import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CDivider extends StatelessWidget {
  final String text;
  const CDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 110,
          height: 1,
          color: Colors.grey.shade300,
          margin: const EdgeInsets.only(right: 10),
        ),
        Text(
          "Or $text with",
          style: GoogleFonts.dmSans(color: Colors.white, fontSize: 16),
        ),
        Container(
          width: 110,
          height: 1,
          color: Colors.grey.shade300,
          margin: const EdgeInsets.only(left: 10),
        ),
      ],
    );
  }
}
