import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectRoleScreen extends StatelessWidget {
  const SelectRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 35,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/logo/logo2.png",
              height: 115,
            ),
          ),
          Text(
            "Create account",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600,),
          )
        ],
      ),
    );
  }
}
