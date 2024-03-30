import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/pages/new/priority_picker_item.dart';
import 'package:google_fonts/google_fonts.dart';

class PriorityPicker extends StatelessWidget {
  final Function setPriority;
  final String priority;
  const PriorityPicker(
      {super.key, required this.setPriority, required this.priority});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Priority',
          style: GoogleFonts.dmSans(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: MyColors.teritiaryColor),
          height: 65,
          child: Row(
            children: [
              PriorityPickerItem(
                  text: "Low", activeIndex: priority, setPriority: setPriority),
              PriorityPickerItem(
                  text: "Medium",
                  activeIndex: priority,
                  setPriority: setPriority),
              PriorityPickerItem(
                  text: "High",
                  activeIndex: priority,
                  setPriority: setPriority),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
