import 'package:acaste/UiHelpers/ColorPalette/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodayRead extends StatelessWidget {
  const TodayRead({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 13,
      children: [
        Text(
          "Today's read",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            categories(size, "TECH"),
            categories(size, "AUTOMATIVE"),
          ],
        ),
      ],
    );
  }

  Widget categories(var size, String banner) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        Container(
          height: size.height / 6,
          width: size.width / 2.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Palette.primaryColor,
          ),
        ),
        Text(
          banner,
          style: GoogleFonts.poppins(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Color(0XFFFD6B3F),
          ),
        ),
      ],
    );
  }
}
