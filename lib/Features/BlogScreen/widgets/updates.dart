import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height / 4.4,
      width: size.width,
      child: PageView(
        children: [
          updateWidget(Colors.blue, size),
          updateWidget(Colors.amber, size),
        ],
      ),
    );
  }

  /// Blog widget to display
  Widget updateWidget(Color color, var boxSize) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: boxSize.height / 20,
                width: boxSize.width / 6.5,
                decoration: BoxDecoration(
                  color: Color(0xFFD34D69),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Icon(
                  CupertinoIcons.group_solid,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              Text(
                "HamzaCH",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Text(
            "Virus",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
          SizedBox(
            width: boxSize.width / 1.5,
            child: Text(
              "How Corona virus is going to impact you next trip",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
