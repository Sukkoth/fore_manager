import 'package:flutter/material.dart';

class CalendarTab extends StatelessWidget {
  const CalendarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Text("CALENDAR TAB"),
            )
          ],
        ),
      ),
    );
  }
}
