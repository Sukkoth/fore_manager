import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fore_manager/constants.dart';
import 'package:fore_manager/pages/home_tabs/calendar_tab.dart';
import 'package:fore_manager/pages/home_tabs/index_tab.dart';
import 'package:fore_manager/pages/home_tabs/menu_tab.dart';
import 'package:fore_manager/pages/home_tabs/projects_tab.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeTabIndex = 0;

  final _homePageTabs = [
    const IndexTab(),
    const ProjectsTab(),
    const CalendarTab(),
    const MenuTab()
  ];

  void setActiveTabIndex(int index) {
    setState(() {
      activeTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: MyColors.secondaryColor, // Set status bar color
    ));
    return Scaffold(
      backgroundColor: MyColors.secondaryColor,
      body: _homePageTabs[activeTabIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 1),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white38),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35.0),
              topRight: Radius.circular(35.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            )),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0),
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          child: BottomNavigationBar(
              currentIndex: activeTabIndex + 1,
              onTap: (val) {
                if (val == 0) {
                  context.go('/new');
                } else {
                  setActiveTabIndex(val - 1);
                }
              },
              backgroundColor: MyColors.secondaryColor,
              elevation: 0,
              selectedItemColor: MyColors.primaryColor,
              selectedFontSize: 12,
              unselectedItemColor: MyColors.teritiaryColor,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: MyColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 30,
                      color: MyColors.secondaryColor,
                    ),
                  ),
                  label: "",
                ),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.home_max_rounded), label: "Home"),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.cases_rounded), label: "Projects"),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_today_rounded),
                    label: "Calendar"),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.menu), label: "Menu"),
              ]),
        ),
      ),
    );
  }
}
