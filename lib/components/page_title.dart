import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mon, May 23 👋",
                  style: GoogleFonts.dmSans(fontSize: 18, color: Colors.white),
                ),
                Text(
                  "Hello Grey",
                  style: GoogleFonts.dmSans(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 35,
                )
              ],
            )
          ]),
    );
  }
}
