import 'package:acaste/Features/AuthenticationScreens/SignUpScreens/user_data_screen.dart';
import 'package:acaste/Features/AuthenticationScreens/widgets/custom_text_field.dart';
import 'package:acaste/Features/AuthenticationScreens/widgets/sign_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

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
                        hintText: "Street Address",
                        icon: Icons.location_on_outlined),
                    CustomTextField(
                        hintText: "Zip Code", icon: Icons.newspaper),
                    CustomTextField(
                        hintText: "State", icon: Icons.location_city),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 6,
                ),
                SignButton(
                  btnName: "Next",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserDataScreen(),
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
