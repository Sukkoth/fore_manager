import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondOnboarding extends StatelessWidget {
  final Function changePage;

  const SecondOnboarding({super.key, required this.changePage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.secondaryLightColor,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: MyColors.secondaryColor,
              ),
              height: 500,
              child: const Image(
                  image: AssetImage('assets/images/second_onboard.png')),
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              "Prioritize important Activities",
              style: GoogleFonts.dmSans(
                  color: MyColors.colorWhite,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Get your tasks and projects completed by prioritizing from the important to the less",
                style: GoogleFonts.dmSans(
                    color: Colors.grey.shade500, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  changePage(2);
                },
                child: Text(
                  "Skip",
                  style: GoogleFonts.dmSans(
                      color: Colors.grey.shade300, fontSize: 16),
                ))
          ],
        ),
      )),
    );
  }
}
