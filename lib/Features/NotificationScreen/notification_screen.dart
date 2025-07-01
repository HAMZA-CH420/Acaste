import 'package:acaste/Features/NotificationScreen/Widgets/notification_widget.dart';
import 'package:acaste/UiHelpers/ColorPalette/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Palette.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          spacing: 25,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                Text(
                  "Today",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                NotificationWidget(
                  notificationData: 'You have received new rating from',
                  sender: 'Charles May',
                  timeOfReceiving: 'just now',
                ),
                NotificationWidget(
                  notificationData: 'You have received new rating from',
                  sender: 'Charles May',
                  timeOfReceiving: '10:00 pm',
                ),
                NotificationWidget(
                  notificationData: 'You have received new rating from',
                  sender: 'Charles May',
                  timeOfReceiving: '9:10 am',
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                Text(
                  "Yesterday",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                NotificationWidget(
                  notificationData: 'You have received new rating from',
                  sender: 'Charles May',
                  timeOfReceiving: '8:12 pm',
                ),
                NotificationWidget(
                  notificationData: 'You have received new rating from',
                  sender: 'Charles May',
                  timeOfReceiving: '7:00 pm',
                ),
                NotificationWidget(
                  notificationData: 'You have received new rating from',
                  sender: 'Charles May',
                  timeOfReceiving: '6:55 pm',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
