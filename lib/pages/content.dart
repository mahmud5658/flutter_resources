import 'package:flutter/material.dart';
import 'package:flutter_resources/utils/text.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            right: -150,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: -200,
            bottom: -470,
            child: Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 15,
            child: Container(
              height: 30,
              child: Image.asset('assets/logo.png'),
            ),
          ),
          Positioned(
            top: 62,
            left: 15,
            child: Container(
                height: 30,
                child: ModifiedText(
                    color: Colors.grey.shade900,
                    text: "it's where you want to be",
                    size: 14)),
          ),
           Positioned(
            bottom: 30,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '4553 3030 1352 4002',
                  style: GoogleFonts.sourceCodePro(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.grey.shade800),
                ),
                Text(
              'ABDULLAH AL MAHMUD',
              style: GoogleFonts.sourceCodePro(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.grey.shade800),
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
