import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatTile extends StatelessWidget {
  final String emoji;
  final String title;
  final int count;
  final Color color;

  const StatTile(
      {super.key,
      required this.emoji,
      required this.title,
      required this.count,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      width: 160,
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: Center(
              child: Text(
                "$emoji",
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: GoogleFonts.dmSans(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "$count",
                style: GoogleFonts.dmSans(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
