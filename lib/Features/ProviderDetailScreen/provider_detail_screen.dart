import 'package:acaste/Features/ProviderDetailScreen/widgets/clinic_name.dart';
import 'package:acaste/Features/ProviderDetailScreen/widgets/job_description.dart';
import 'package:acaste/UiHelpers/ColorPalette/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProviderDetailScreen extends StatelessWidget {
  const ProviderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Provider's Details",
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
          spacing: 20,
          children: [
            ClinicName(
              clinicName: 'Washington Clinic',
              address: 'Washington Dc, St 101',
            ),
            JobDescription(),
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/images/map.png",
                ))
          ],
        ),
      ),
    );
  }
}
