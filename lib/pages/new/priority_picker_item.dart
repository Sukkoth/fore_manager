import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class PriorityPickerItem extends StatelessWidget {
  final String text;
  final Function setPriority;
  final String activeIndex;
  const PriorityPickerItem(
      {super.key,
      required this.text,
      required this.setPriority,
      required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    final active = text.toLowerCase() == activeIndex;

    return Expanded(
        child: GestureDetector(
      onTap: () {
        setPriority(text.toLowerCase());
      },
      child: Container(
        decoration: BoxDecoration(
          color: active ? MyColors.primaryColor : MyColors.teritiaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.dmSans(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: active ? Colors.black : Colors.grey.shade500),
          ),
        ),
      ),
    ));
  }
}
