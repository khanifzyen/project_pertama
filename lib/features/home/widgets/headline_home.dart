import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadlineHome extends StatelessWidget {
  const HeadlineHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 226,
      child: Text(
        'Discover the most modern furniture',
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Color(0xFF4A4543)),
        ),
      ),
    );
  }
}
