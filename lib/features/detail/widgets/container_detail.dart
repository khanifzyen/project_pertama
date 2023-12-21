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

  int _selectedColor = 0;

  void onTapColor(int index) {
    setState(() {
      _selectedColor = index;
    });
  }

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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: _colors.asMap().entries.map((entry) {
                        int index = entry.key;
                        Color color = entry.value;

                        return Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: InkWell(
                            onTap: () => onTapColor(index),
                            child: _selectedColor == index
                                ? CircleAvatar(
                                    radius: 14,
                                    backgroundColor: color,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: color,
                                      ),
                                    ),
                                  )
                                : CircleAvatar(
                                    radius: 10,
                                    backgroundColor: color,
                                  ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(height: 19),
                Row(
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
                ),
                const SizedBox(height: 32),
                SizedBox(
                  height: 60,
                  child: Text(
                    "Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFADADAD),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9A9390),
                    ),
                    onPressed: () {},
                    child: Text(
                      "ADD TO CART",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
