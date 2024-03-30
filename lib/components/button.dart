import 'package:flutter/material.dart';
import 'package:fore_manager/components/button_constants.dart';
import 'package:fore_manager/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class FormButton extends StatelessWidget {
  final String text;
  final ButtonColorType colorType;

  final VoidCallback onTap;

  final buttonColors = <ButtonColorType, Color>{
    ButtonColorType.primary: MyColors.primaryColor,
    ButtonColorType.secondary: Colors.grey.shade500,
  };

  FormButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.colorType});

  @override
  Widget build(BuildContext context) {
    final bgColor = colorType == ButtonColorType.primary
        ? MyColors.primaryColor
        : Colors.grey.shade600;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(35)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.dmSans(
                color: colorType == ButtonColorType.primary
                    ? MyColors.secondaryColor
                    : Colors.grey.shade200,
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
