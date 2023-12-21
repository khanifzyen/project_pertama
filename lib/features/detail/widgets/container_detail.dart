import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerDetail extends StatefulWidget {
  const ContainerDetail({super.key});

  @override
  State<ContainerDetail> createState() => _ContainerDetailState();
}

class _ContainerDetailState extends State<ContainerDetail> {
  final List<Color> _colors = [
    const Color(0xFF9A9390),
    const Color(0xFFEEA427),
    const Color(0xFFE3E3E3),
    const Color(0xFF80450A),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 381,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            width: 36,
            height: 5,
            color: const Color(0xFFD8D8D8),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Wooden Coff",
                      style: GoogleFonts.poppins(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF4A4543),
                      ),
                    ),
                    Text(
                      "\$240",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF9A9390),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 9),
                SvgPicture.asset("assets/icons/Score.svg"),
                const SizedBox(height: 21),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Choose a color",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF7A8D9C),
                      ),
                    ),
                    Row(
                      children: _colors.map((color) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: color,
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
