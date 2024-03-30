import 'package:flutter/material.dart';
import 'package:fore_manager/components/Auth/form_title.dart';
import 'package:fore_manager/components/Auth/login_form.dart';
import 'package:fore_manager/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                    text: "Log in to start managing your tasks easily"),
                LoginForm(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Are you a new user? ",
                        style: GoogleFonts.dmSans(
                            color: Colors.white, fontSize: 16)),
                    TextButton(
                        onPressed: () {
                          context.go('/register');
                        },
                        child: Text(
                          "register here",
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
