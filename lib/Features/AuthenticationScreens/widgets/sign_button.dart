import 'package:acaste/Features/UiHelpers/ColorPalette/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignButton extends StatelessWidget {
  const SignButton({super.key, required this.btnName, required this.onTap});
  final String btnName;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        alignment: Alignment.center,
        height: size.height / 16,
        width: size.width,
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Text(
          btnName,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
