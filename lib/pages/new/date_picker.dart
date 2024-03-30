import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CDatePicker extends StatelessWidget {
  final String label;
  final String hint;
  const CDatePicker({super.key, required this.label, required this.hint});

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
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              confirmText: "SET DEADLINE",
              fieldLabelText: "Set Deadline",
              fieldHintText: "MONTH/DATE/YEAR",
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime(2101),
              builder: (context, child) {
                return Theme(
                  data: ThemeData.dark(useMaterial3: true),
                  child: child ??
                      Container(), // Use a null check to ensure child is not null
                );
              },
            );

            if (pickedDate != null) {
              debugPrint("SELECTED DATE $pickedDate");
            } else {
              debugPrint("PLEASE SELECT DATE");
            }
          },
          minLines: 1,
          maxLines: 1,
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
