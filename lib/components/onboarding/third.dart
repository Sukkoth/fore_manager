import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdOnboarding extends StatelessWidget {
  final Function changePage;

  const ThirdOnboarding({super.key, required this.changePage});

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
                color: const Color.fromARGB(174, 252, 228, 236),
              ),
              height: 500,
              child: const Image(
                  image: AssetImage('assets/images/third_onboard.png')),
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              "Take Control of your day",
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
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Get your tasks and projects completed in your own time",
                style: GoogleFonts.dmSans(
                    color: Colors.grey.shade500, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                context.go('/login');
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                height: 60,
                decoration: BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius: BorderRadius.circular(35)),
                child: Center(
                  child: Text(
                    "Create a Task",
                    style: GoogleFonts.dmSans(
                        color: MyColors.secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
