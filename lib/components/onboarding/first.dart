import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstOnboarding extends StatelessWidget {
  final Function changePage;
  const FirstOnboarding({super.key, required this.changePage});

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
                color: const Color.fromARGB(255, 10, 13, 43),
              ),
              height: 500,
              child: const Image(
                  image: AssetImage('assets/images/first_onboard_image.png')),
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              "Fast and Easy Task Management",
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
                "Manage all your projects and tasks in one place.",
                style: GoogleFonts.dmSans(
                    color: Colors.grey.shade500, fontSize: 16),
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
