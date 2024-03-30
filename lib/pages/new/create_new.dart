import 'package:flutter/material.dart';
import 'package:fore_manager/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNew extends StatelessWidget {
  const CreateNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: MyColors.secondaryColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => {context.go('/')},
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
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  context.go('/new/task');
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.note_add_outlined, size: 35),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Add Task",
                        style: GoogleFonts.dmSans(
                            color: MyColors.secondaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  context.go('/new/project');
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.library_add_rounded, size: 35),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Create project",
                        style: GoogleFonts.dmSans(
                            color: MyColors.secondaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
