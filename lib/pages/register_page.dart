import 'package:flutter/material.dart';
import 'package:fore_manager/components/Auth/form_title.dart';
import 'package:fore_manager/components/Auth/register_form.dart';
import 'package:fore_manager/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.secondaryLightColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              children: [
                const FormTitle(
                    text: "Create an account to take control of your day"),
                RegisterForm(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ",
                        style: GoogleFonts.dmSans(
                            color: Colors.white, fontSize: 16)),
                    TextButton(
                        onPressed: () {
                          context.go('/login');
                        },
                        child: Text(
                          "Log in",
                          style: GoogleFonts.dmSans(
                              color: MyColors.primaryColor, fontSize: 16),
                        ))
                  ],
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
