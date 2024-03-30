import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/variables.dart';
import 'package:google_fonts/google_fonts.dart';

class CDropDown extends StatelessWidget {
  static List colorOptions = [
    {'name': 'Red', 'color': Colors.red},
    {'name': 'Blue', 'color': Colors.blue},
    {'name': 'Green', 'color': Colors.green},
    {'name': 'Yellow', 'color': Colors.yellow},
    {'name': 'Orange', 'color': Colors.orange},
    {'name': 'Purple', 'color': Colors.purple},
    {'name': 'Teal', 'color': Colors.teal},
    {'name': 'Pink', 'color': Colors.pink},
    {'name': 'Cyan', 'color': Colors.cyan},
    {'name': 'Indigo', 'color': Colors.indigo},
    {'name': 'Amber', 'color': Colors.amber},
    {'name': 'Lime', 'color': Colors.lime},
    {'name': 'Deep Purple', 'color': Colors.deepPurple},
    {'name': 'Deep Orange', 'color': Colors.deepOrange},
    {'name': 'Light Blue', 'color': Colors.lightBlue},
    {'name': 'Light Green', 'color': Colors.lightGreen},
    {'name': 'Brown', 'color': Colors.brown},
    {'name': 'Grey', 'color': Colors.grey},
    {'name': 'Blue Grey', 'color': Colors.blueGrey},
  ];
  final String label;
  final String hint;
  final List data;
  const CDropDown(
      {super.key, required this.data, required this.label, required this.hint});

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
            // value: "Dash",
            hint: Text(
              hint,
              style: GoogleFonts.dmSans(color: Colors.grey.shade500),
            ),
            style: GoogleFonts.dmSans(color: Colors.white, fontSize: 18),
            focusColor: MyColors.primaryColor,
            isExpanded: true,
            items:
                Constants.colorOptions.map((Map<String, dynamic> colorOption) {
              return DropdownMenuItem<Map<String, dynamic>>(
                value: colorOption,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 24,
                      height: 24,
                      color: colorOption[
                          'color'], // Ensure color is accessed as Color
                    ),
                    const SizedBox(width: 8),
                    Text(colorOption['name']!),
                  ],
                ),
              );
            }).toList(),
            // items: const [
            //   DropdownMenuItem(
            //     value: 1,
            //     child: Text("Dash"),
            //   )
            // ],
            onChanged: (val) {}),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
