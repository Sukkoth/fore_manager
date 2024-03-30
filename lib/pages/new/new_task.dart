import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/components/button.dart';
import 'package:fore_manager/components/button_constants.dart';
import 'package:fore_manager/pages/new/priority_picker.dart';
import 'package:fore_manager/pages/new/text_field.dart';
import 'package:fore_manager/pages/new/date_picker.dart';
import 'package:fore_manager/pages/new/projects_selector.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  String priority = 'low';

  void setPriority(priority) {
    setState(() {
      this.priority = priority;
    });
  }

  @override
  Widget build(BuildContext context) {
    final extra = GoRouterState.of(context).extra as Map?;
    // print("🚀🚀 EXTRA, $extra");

    return Scaffold(
        backgroundColor: MyColors.secondaryLightColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: MyColors.secondaryLightColor,
          elevation: 0,
          title: Text(
            "New Task",
            style: GoogleFonts.dmSans(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade400),
          ),
          leading: GestureDetector(
            onTap: () => {
              if (extra != null && extra['backTo'] != null)
                {context.go(extra['backTo'])}
              else
                {context.pop()}
            },
            child: Center(
                child: Container(
              padding: const EdgeInsets.all(15),
              child: const Icon(
                size: 20,
                Icons.arrow_back,
                color: MyColors.primaryColor,
              ),
            )),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CTextField(
                          label: "Name", hint: "Name of your task"),
                      const CTextField(
                        label: "Description",
                        hint: "Enter task description",
                        minLines: 5,
                        maxLines: 7,
                      ),
                      const CDatePicker(
                        label: "Deadline",
                        hint: "Select deadline date",
                      ),
                      PriorityPicker(
                          priority: priority, setPriority: setPriority),
                      ProjectsSelector(
                          defaultProjectId: extra != null
                              ? extra['projectId'] as String?
                              : null,
                          label: 'Project',
                          hint: 'Select project'),
                      const SizedBox(
                        height: 10,
                      ),
                      FormButton(
                        onTap: () {},
                        colorType: ButtonColorType.primary,
                        text: 'Create Task',
                      )
                    ]))));
  }
}
