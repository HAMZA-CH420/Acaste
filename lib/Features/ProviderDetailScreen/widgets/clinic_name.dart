import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClinicName extends StatelessWidget {
  const ClinicName(
      {super.key, required this.clinicName, required this.address});
  final String clinicName;
  final String address;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 30,
          children: [
            Text(
              clinicName,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              "CureMD",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Text(
          address,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
