import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pertama/features/home/widgets/category_home.dart';
import 'package:project_pertama/features/home/widgets/headline_home.dart';
import 'package:project_pertama/features/home/widgets/recommended_furnitures_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
        title: Center(
            child: Text(
          "Home",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff4A4543)),
          ),
        )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/search.svg'),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF2F2F2),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            HeadlineHome(),
            SizedBox(height: 30),
            SizedBox(
              height: 40,
              child: CategoryHome(),
            ),
            SizedBox(height: 30),
            Expanded(
              child: RecommendedFurnituresHome(),
            ),
          ],
        ),
      ),
    );
  }
}
