import 'package:acaste/Features/AppointmentScreen/appointment_screen.dart';
import 'package:acaste/Features/BlogScreen/blog_screen.dart';
import 'package:acaste/Features/HomeScreen/home_screen.dart';
import 'package:acaste/Features/NotificationScreen/notification_screen.dart';
import 'package:acaste/Features/ProviderDetailScreen/provider_detail_screen.dart';
import 'package:acaste/UiHelpers/ColorPalette/color_palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    AppointmentScreen(),
    BlogScreen(),
    NotificationScreen(),
    ProviderDetailScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        elevation: 0,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Palette.primaryColor,
        unselectedItemColor: Colors.grey.shade400,
        items: [
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.calendar), label: "calender"),
          BottomNavigationBarItem(icon: Icon(Iconsax.document), label: "blog"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.notification), label: "Notification"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_crop_circle), label: "profile"),
        ],
      ),
    );
  }
}
