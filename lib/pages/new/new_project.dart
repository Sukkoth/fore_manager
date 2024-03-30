import 'package:flutter/material.dart';
import 'package:fore_manager/components/button.dart';
import 'package:fore_manager/components/button_constants.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/pages/new/date_picker.dart';
import 'package:fore_manager/pages/new/dropdown.dart';
import 'package:fore_manager/pages/new/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class NewProject extends StatelessWidget {
  const NewProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.secondaryLightColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColors.secondaryLightColor,
        elevation: 0,
        title: Text(
          "New Project",
          style: GoogleFonts.dmSans(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade400),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CTextField(label: "Name", hint: "Name of your project"),
              const CTextField(
                label: "Description",
                hint: "Enter project description",
                minLines: 7,
                maxLines: 10,
              ),
              CDropDown(
                  label: "Color",
                  hint: "Select color",
                  data: CVariables.colorOptions),
              const CDatePicker(
                label: "Deadline",
                hint: "Select deadline date",
              ),
              const SizedBox(
                height: 100,
              ),
              FormButton(
                  onTap: () {},
                  text: "Create Project",
                  colorType: ButtonColorType.primary)
            ],
          ),
        ),
      ),
    );
  }
}
