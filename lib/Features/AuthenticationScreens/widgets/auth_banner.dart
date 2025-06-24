import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthBanner extends StatelessWidget {
  const AuthBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sign In",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          Text(
            "Welcome Back",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
