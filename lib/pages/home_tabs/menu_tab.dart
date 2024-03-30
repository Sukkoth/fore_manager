import 'package:flutter/material.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Text("MENU TAB"),
            )
          ],
        ),
      ),
    );
  }
}
