import 'package:acaste/Features/AuthenticationScreens/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectRoleScreen extends StatelessWidget {
  const SelectRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
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
                "Create Account",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 14,
              ),
              Column(
                spacing: 10,
                children: [
                  CustomButton(
                    btnName: "User",
                  ),
                  CustomButton(
                    btnName: "Provider",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
