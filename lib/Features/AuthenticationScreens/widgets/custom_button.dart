import 'package:acaste/Features/AuthenticationScreens/SignUpScreens/address_screen.dart';
import 'package:acaste/UiHelpers/ColorPalette/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.btnName});
  final String btnName;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool onTap = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          onTap = !onTap;
          Future.delayed(
            Duration(milliseconds: 600),
            () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddressScreen(),
                )),
          );
        });
      },
      child: Container(
        height: size.height / 12,
        width: size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: onTap ? Palette.primaryColor : Colors.white,
        ),
        child: Text(
          widget.btnName,
          style: GoogleFonts.poppins(
            fontSize: 19,
            fontWeight: FontWeight.w600,
            color: onTap ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
