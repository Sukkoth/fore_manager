import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFormField extends StatelessWidget {
  final String label;
  final bool obsecureField;
  final TextInputType keyboardType;
  final TextEditingController controller;

  const MyFormField(
      {super.key,
      required this.label,
      required this.keyboardType,
      required this.obsecureField,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          label,
          style: GoogleFonts.dmSans(color: Colors.white, fontSize: 18),
          // textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 15,
        ),
        TextField(
          style: const TextStyle(color: Colors.white),
          keyboardType: keyboardType,
          obscureText: obsecureField,
          controller: controller,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: MyColors.colorWhite)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: MyColors.primaryColor))),
        )
      ],
    );
  }
}
