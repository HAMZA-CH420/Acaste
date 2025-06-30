import 'package:acaste/UiHelpers/ColorPalette/color_palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget(
      {super.key,
      required this.notificationData,
      required this.sender,
      required this.timeOfReceiving});
  final String notificationData, sender, timeOfReceiving;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Palette.primaryColor,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).height / 3.5,
          child: Column(
            spacing: 3,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notificationData,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 13),
              ),
              Text(
                sender,
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
              ),
              Text(
                timeOfReceiving,
                style: GoogleFonts.poppins(color: Colors.grey.shade500),
              )
            ],
          ),
        ),
        Icon(CupertinoIcons.ellipsis)
      ],
    );
  }
}
