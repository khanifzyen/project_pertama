import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectQuantityDetail extends StatefulWidget {
  const SelectQuantityDetail({super.key});

  @override
  State<SelectQuantityDetail> createState() => _SelectQuantityDetailState();
}

class _SelectQuantityDetailState extends State<SelectQuantityDetail> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select Quantity",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF7A8D9C),
          ),
        ),
        Row(
          children: [
            Container(
              width: 32,
              height: 32,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFEAEBEC),
                ),
                color: const Color(0xFFFCFCFC),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    topLeft: Radius.circular(18)),
              ),
              child: SvgPicture.asset("assets/icons/substract.svg"),
            ),
            Container(
              width: 40,
              height: 32,
              color: const Color(0xFFE3E3E3),
              child: Center(
                child: Text("2",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF4A4543),
                    )),
              ),
            ),
            Container(
              width: 32,
              height: 32,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFEAEBEC),
                ),
                color: const Color(0xFFFCFCFC),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(18),
                    bottomRight: Radius.circular(18)),
              ),
              child: SvgPicture.asset("assets/icons/add.svg"),
            ),
          ],
        ),
      ],
    );
  }
}
