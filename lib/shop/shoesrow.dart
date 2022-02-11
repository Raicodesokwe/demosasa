import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoesRow extends StatelessWidget {
  const ShoesRow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'shoes',
          style: GoogleFonts.prompt(
              fontWeight: FontWeight.w500, fontSize: 25),
        ),
        const Spacer(),
        Text(
          '20 items',
          style: GoogleFonts.nunitoSans(),
        ),
        SizedBox(
          width: size.width * 0.03,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: Colors.grey.withOpacity(0.2)),
          child: const Center(
            child: Icon(FontAwesomeIcons.alignRight),
          ),
        )
      ],
    );
  }
}