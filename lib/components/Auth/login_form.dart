import 'package:flutter/material.dart';
import 'package:fore_manager/components/Auth/divider.dart';
import 'package:fore_manager/components/Auth/field.dart';
import 'package:fore_manager/components/button.dart';
import 'package:fore_manager/components/button_constants.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool validEmail(String email) {
    bool isValid = true;
    if (!emailController.text.contains("@")) isValid = false;
    if (!emailController.text.contains(".")) isValid = false;
    return isValid;
  }

  bool validPassword(String password) {
    return password.length > 5;
  }

  void handleLogin(BuildContext context) {
    if ((validEmail(emailController.text) &&
        validPassword(passwordController.text))) {
      context.go('/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MyFormField(
            keyboardType: TextInputType.emailAddress,
            label: "Email",
            obsecureField: false,
            controller: emailController,
          ),
          MyFormField(
            keyboardType: TextInputType.text,
            label: "Password",
            obsecureField: true,
            controller: passwordController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "I forgot my password",
                    style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: FormButton(
                onTap: () {
                  handleLogin(context);
                },
                text: "Log in",
                colorType: ButtonColorType.secondary),
          ),
          const CDivider(
            text: 'login',
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(35)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                    width: 40,
                    height: 40,
                    image: AssetImage(
                      'assets/images/google.png',
                    )),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Google",
                  style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
