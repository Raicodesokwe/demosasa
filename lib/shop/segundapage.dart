import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hustlepapa/rating/starrating.dart';
import 'package:hustlepapa/shader/shadermask.dart';

class SegundaPage extends StatefulWidget {
  final String imgUrl;
  final String title;
  const SegundaPage({Key? key, required this.imgUrl, required this.title})
      : super(key: key);

  @override
  State<SegundaPage> createState() => _SegundaPageState();
}

class _SegundaPageState extends State<SegundaPage> {
  final double urefu = 100;

  String selected = 'first';
  String chagua = 'kwanza';
  @override
  Widget build(BuildContext context) {
    //  final items=persons.map((e) => buildImage(e)).toList();
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(children: [
              Hero(
                tag: widget.title,
                child: Container(
                  height: size.height * 0.4,
                  width: size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: selected == 'first'
                              ? AssetImage(widget.imgUrl)
                              : selected == 'second'
                                  ? const AssetImage('assets/nikita.jpg')
                                  : const AssetImage('assets/grin.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 15,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: size.height * 0.1,
                        width: size.width * 0.1,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Image.asset(
                          'assets/aro.png',
                          scale: 1.5,
                        )),
                  )),
              Positioned(
                  top: 0,
                  right: 15,
                  child: Container(
                      height: size.height * 0.1,
                      width: size.width * 0.1,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Icon(
                        FontAwesomeIcons.heart,
                        size: 17,
                      ))),
              Positioned(
                  bottom: 30,
                  left: 20,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'first';
                          });
                        },
                        child: Container(
                          height: size.height * 0.15,
                          width: size.width * 0.15,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(widget.imgUrl),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'second';
                          });
                        },
                        child: Container(
                          height: size.height * 0.15,
                          width: size.width * 0.15,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                  image: AssetImage('assets/nikita.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'third';
                          });
                        },
                        child: Container(
                          height: size.height * 0.15,
                          width: size.width * 0.15,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                  image: AssetImage('assets/grin.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                  ))
            ]),
            Text(
              widget.title,
              style: GoogleFonts.varelaRound(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              'ksh 13,000',
              style: GoogleFonts.openSans(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chagua = 'kwanza';
                      });
                    },
                    child: Container(
                      height: size.height * 0.13,
                      width: size.width * 0.13,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: chagua != 'kwanza'
                              ? Colors.grey.withOpacity(0.5)
                              : null,
                          gradient: chagua == 'kwanza'
                              ? const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                      Color(0xFFFEC18A),
                                      Colors.orangeAccent,
                                      Colors.orange,
                                      Colors.deepOrange
                                    ])
                              : null),
                      child: Center(
                        child: Container(
                          height: size.height * 0.11,
                          width: size.width * 0.11,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                              child: Text(
                            '34',
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chagua = 'pili';
                      });
                    },
                    child: Container(
                      height: size.height * 0.13,
                      width: size.width * 0.13,
                      child: Center(
                        child: Container(
                          height: size.height * 0.11,
                          width: size.width * 0.11,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                              child: Text(
                            '35',
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: chagua == 'pili'
                              ? const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                      Color(0xFFFEC18A),
                                      Colors.orangeAccent,
                                      Colors.orange,
                                      Colors.deepOrange
                                    ])
                              : null,
                          shape: BoxShape.circle,
                          color: chagua != 'pili'
                              ? Colors.grey.withOpacity(0.5)
                              : null),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chagua = 'tatu';
                      });
                    },
                    child: Container(
                      height: size.height * 0.13,
                      width: size.width * 0.13,
                      child: Center(
                        child: Container(
                          height: size.height * 0.11,
                          width: size.width * 0.11,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                              child: Text(
                            '36',
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: chagua == 'tatu'
                              ? const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                      Color(0xFFFEC18A),
                                      Colors.orangeAccent,
                                      Colors.orange,
                                      Colors.deepOrange
                                    ])
                              : null,
                          shape: BoxShape.circle,
                          color: chagua != 'tatu'
                              ? Colors.grey.withOpacity(0.5)
                              : null),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chagua = 'nne';
                      });
                    },
                    child: Container(
                      height: size.height * 0.13,
                      width: size.width * 0.13,
                      child: Center(
                        child: Container(
                          height: size.height * 0.11,
                          width: size.width * 0.11,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                              child: Text(
                            '37',
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: chagua == 'nne'
                              ? const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                      Color(0xFFFEC18A),
                                      Colors.orangeAccent,
                                      Colors.orange,
                                      Colors.deepOrange
                                    ])
                              : null,
                          shape: BoxShape.circle,
                          color: chagua != 'nne'
                              ? Colors.grey.withOpacity(0.5)
                              : null),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chagua = 'tano';
                      });
                    },
                    child: Container(
                      height: size.height * 0.13,
                      width: size.width * 0.13,
                      child: Center(
                        child: Container(
                          height: size.height * 0.11,
                          width: size.width * 0.11,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                              child: Text(
                            '38',
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: chagua == 'tano'
                              ? const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                      Color(0xFFFEC18A),
                                      Colors.orangeAccent,
                                      Colors.orange,
                                      Colors.deepOrange
                                    ])
                              : null,
                          shape: BoxShape.circle,
                          color: chagua != 'tano'
                              ? Colors.grey.withOpacity(0.5)
                              : null),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'It happened in 1964,Nike,then known as blue ribbon sports launched its first shoe.Today ,it grosses in excess of 37.4 billion dollars in revenue',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: GoogleFonts.prompt(letterSpacing: 1),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GradientText(
                'Read more . . .',
                style: TextStyle(fontWeight: FontWeight.w700),
                gradient:
                    LinearGradient(colors: [Colors.orange, Colors.deepOrange]),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: size.height * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 4),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                image: AssetImage('assets/opudo.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          left: 40,
                          child: Container(
                            height: size.height * 0.15,
                            width: size.width * 0.15,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 4),
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                    image: AssetImage('assets/kering.jpg'),
                                    fit: BoxFit.cover)),
                          )),
                      Positioned(
                          left: 80,
                          child: Container(
                            height: size.height * 0.15,
                            width: size.width * 0.15,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 4),
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                    image: AssetImage('assets/masi.jpg'),
                                    fit: BoxFit.cover)),
                          )),
                      Positioned(
                          left: 120,
                          child: Container(
                            height: size.height * 0.15,
                            width: size.width * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.white, width: 4),
                              shape: BoxShape.circle,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  FontAwesomeIcons.plus,
                                  size: 13,
                                ),
                                Text(
                                  '10',
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                  const Spacer(),
                  StarRating((rating) {})
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: size.height * 0.068,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
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
                child: Center(
                  child: Text(
                    'Add to cart',
                    style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.white),
                  ),
                ),
                //materialapp widget is a wrapper of other flutter widgets
                //material widget clips to a shape
                //it elevates its widget subtree along z axis
              ),
            ),
          ],
        ),
      ),
    );
  }
}
