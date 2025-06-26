import 'package:acaste/Features/AuthenticationScreens/SignInScreen/sign_in_screen.dart';
import 'package:acaste/Features/AuthenticationScreens/widgets/sign_button.dart';
import 'package:acaste/Features/UiHelpers/ColorPalette/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadPhotoScreen extends StatelessWidget {
  const UploadPhotoScreen({super.key});

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
                  "Upload Photo",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                uploadPhotoWidget(context),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 4,
                ),
                SignButton(
                  btnName: "Next",
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
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

  Widget uploadPhotoWidget(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 5,
      decoration: BoxDecoration(
        border: Border.all(
          color: Palette.primaryColor,
          width: 3,
        ),
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Icon(
        Icons.camera_alt_outlined,
        color: Palette.primaryColor,
        size: 50,
      ),
    );
  }
}
