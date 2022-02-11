import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeContainer extends StatelessWidget {
  const HomeContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/hustle.png',
            height: size.height * 0.1,
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
          Text(
            'Hustlepapa',
            style: GoogleFonts.varelaRound(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 25),
          )
        ],
      ),
      height: size.height * 0.2,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
              blurRadius: 8,
              spreadRadius: 6,
              offset: const Offset(0, 3),
              color: Colors.black.withOpacity(0.2))
        ],
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFEC18A),
              Colors.orangeAccent,
              Colors.orange,
              Colors.deepOrange
            ]),
      ),
    );
  }
}


