import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedFurnituresHome extends StatelessWidget {
  const RecommendedFurnituresHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          "Recommended Furnitures",
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xFF4A4543),
          )),
        ),
      ],
    );
  }
}
