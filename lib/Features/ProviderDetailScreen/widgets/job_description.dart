import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDescription extends StatelessWidget {
  const JobDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Job Description",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            )),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            "Lörem ipsum nerväxt ogt. Hemide etnofoni reck med konpatologi. Fiskpedikyr hundvissla vipura multitösärtad: ora. Agnostiskop pseudomodern till pseudototal, brorsantrick .",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
