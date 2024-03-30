import 'package:flutter/material.dart';
import 'package:fore_manager/components/Auth/divider.dart';
import 'package:fore_manager/components/Auth/field.dart';
import 'package:fore_manager/components/button.dart';
import 'package:fore_manager/components/button_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterForm extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MyFormField(
          label: "Name",
          keyboardType: TextInputType.text,
          obsecureField: false,
          controller: nameController,
        ),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: FormButton(
              onTap: () {},
              text: "Sign up",
              colorType: ButtonColorType.primary),
        ),
        const CDivider(
          text: "signup",
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
                  width: 30,
                  height: 30,
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
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
