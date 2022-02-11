import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:hustlepapa/shop/thegrid.dart';


import 'homecontainer.dart';
import 'shoesrow.dart';

class HomePapa extends StatefulWidget {
  const HomePapa({Key? key}) : super(key: key);

  @override
  State<HomePapa> createState() => _HomePapaState();
}

class _HomePapaState extends State<HomePapa> {
  String selected = 'first';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.02),
                  HomeContainer(size: size),
                  SizedBox(height: size.height * 0.03),
                  SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'first';
                                  });
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  padding: selected == 'first'
                                      ? const EdgeInsets.all(12)
                                      : null,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      gradient: selected == 'first'
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
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.asset(
                                        "assets/shoes.jpg",
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Text('shoes',
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'second';
                                  });
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  padding: selected == 'second'
                                      ? const EdgeInsets.all(12)
                                      : null,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      gradient: selected == 'second'
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
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.asset(
                                        "assets/muzik.jpg",
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Text('music',
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'third';
                                  });
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  padding: selected == 'third'
                                      ? const EdgeInsets.all(12)
                                      : null,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      gradient: selected == 'third'
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
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.asset(
                                        "assets/trendy.jpeg",
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Text('fashion',
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'fourth';
                                  });
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  padding: selected == 'fourth'
                                      ? const EdgeInsets.all(12)
                                      : null,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      gradient: selected == 'fourth'
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
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.asset(
                                        "assets/events.jpg",
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Text('events',
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'fifth';
                                  });
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  padding: selected == 'fifth'
                                      ? const EdgeInsets.all(12)
                                      : null,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      gradient: selected == 'fifth'
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
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.asset(
                                        "assets/thimu.jpg",
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Text('phones',
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'sixth';
                                  });
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  padding: selected == 'sixth'
                                      ? const EdgeInsets.all(12)
                                      : null,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      gradient: selected == 'sixth'
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
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.asset(
                                        "assets/kitchen.jpg",
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Text('kitchenware',
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'seventh';
                                  });
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  padding: selected == 'seventh'
                                      ? const EdgeInsets.all(12)
                                      : null,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      gradient: selected == 'seventh'
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
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.asset(
                                        "assets/fanicha.jpg",
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Text('furniture',
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                  ))
                            ],
                          ),
                        ],
                      )),
                  SizedBox(height: size.height * 0.03),
                  ShoesRow(size: size),
                  SizedBox(height: size.height * 0.03),
                  TheGrid(size: size)
                ],
              ),
            ),
          ),
          floatingActionButton: Align(
            alignment: FractionalOffset.bottomCenter,
            child: FloatingActionButton(
              onPressed: () {},
              child: Container(
                width: 60,
                height: 60,
                child: const Icon(
                  FontAwesomeIcons.shoppingBag,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 8,
                        spreadRadius: 6,
                        offset: const Offset(0, 3),
                        color: Colors.black.withOpacity(0.2))
                  ],
                  shape: BoxShape.circle,
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
              ),
            ),
          )),
    );
  }
}
