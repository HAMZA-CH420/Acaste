import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  final List<Map<String, dynamic>> updates = [
    {
      "authorName": "HamzaCh",
      "title": "Virus",
      "subtitle": "How corona virus is going to impact you next trip",
      "titleBackground": "blogImage1.jpg"
    },
    {
      "authorName": "ShoaibCh",
      "title": "Rising Talent",
      "subtitle": "Apple Watch Series 5: Finally, always on",
      "titleBackground": "blogImage2.jpg"
    },
    {
      "authorName": "UsmanCh",
      "title": "Rising Talent",
      "subtitle": "Apple Watch Series 5: Finally, always on",
      "titleBackground": "blogImage3.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height / 4.4,
      width: size.width,
      child: PageView.builder(
        itemCount: updates.length,
        itemBuilder: (context, index) {
          return updateWidget(
            image: updates[index]['titleBackground'],
            title: updates[index]['title'],
            subtitle: updates[index]['subtitle'],
            authorName: updates[index]['authorName'],
            boxSize: size,
          );
        },
      ),
    );
  }

  /// Blog widget to display
  Widget updateWidget({
    required String image,
    required String title,
    required String subtitle,
    required String authorName,
    required var boxSize,
  }) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage("assets/images/$image"), fit: BoxFit.cover),
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.35),
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
                  authorName,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Text(
              title,
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
                subtitle,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
