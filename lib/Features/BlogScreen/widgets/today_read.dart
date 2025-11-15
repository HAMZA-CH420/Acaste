import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodayRead extends StatelessWidget {
  const TodayRead({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Today's read",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
