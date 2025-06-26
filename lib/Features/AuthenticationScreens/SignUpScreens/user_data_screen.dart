import 'package:acaste/Features/AuthenticationScreens/SignUpScreens/upload_photo_screen.dart';
import 'package:acaste/Features/AuthenticationScreens/widgets/custom_text_field.dart';
import 'package:acaste/Features/AuthenticationScreens/widgets/sign_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class UserDataScreen extends StatelessWidget {
  const UserDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
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
                  height: 20,
                ),
                Column(
                  spacing: 8,
                  children: [
                    CustomTextField(
                      hintText: "First Name",
                      icon: CupertinoIcons.person_crop_circle,
                    ),
                    CustomTextField(
                      hintText: "Last Name",
                      icon: CupertinoIcons.person_crop_circle,
                    ),
                    CustomTextField(
                      hintText: "Email",
                      icon: CupertinoIcons.mail,
                    ),
                    CustomTextField(
                      hintText: "Password",
                      icon: Iconsax.password_check,
                    ),
                    CustomTextField(
                      hintText: "Confirm Password",
                      icon: Iconsax.password_check,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 17,
                ),
                SignButton(
                  btnName: "Next",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UploadPhotoScreen(),
                        ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
