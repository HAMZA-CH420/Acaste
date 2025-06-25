import 'package:acaste/Features/AuthenticationScreens/widgets/auth_banner.dart';
import 'package:acaste/Features/AuthenticationScreens/widgets/custom_text_field.dart';
import 'package:acaste/Features/UiHelpers/ColorPalette/color_palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../SignUpScreens/select_role_screen.dart';
import '../widgets/sign_button.dart';

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
            child: SingleChildScrollView(
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
                    isPassword: true,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.grey.shade500),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 3,
                  ),
                  SignButton(
                    btnName: "Sign In",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have An Account? ",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectRoleScreen(),
                              ));
                        },
                        child: Text(
                          "SignUp",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Palette.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
