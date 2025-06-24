import 'package:acaste/Features/AuthenticationScreens/widgets/auth_banner.dart';
import 'package:acaste/Features/AuthenticationScreens/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/logo/logo2.png",
                    height: 115,
                  ),
                ),
                AuthBanner(),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: "Email",
                  icon: CupertinoIcons.mail,
                ),
                CustomTextField(
                  hintText: "Password",
                  icon: CupertinoIcons.lock,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.poppins(
                        fontSize: 15, color: Colors.grey.shade500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
