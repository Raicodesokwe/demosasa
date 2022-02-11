import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hustlepapa/provider/gridprovider.dart';
import 'package:hustlepapa/shop/segundapage.dart';
import 'package:provider/provider.dart';

class TheGrid extends StatelessWidget {
  const TheGrid({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Consumer<GridProvider>(builder: (context, gridData, child) {
      return StaggeredGridView.countBuilder(
          shrinkWrap: true,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          itemCount: gridData.contents.length,
          physics: const ScrollPhysics(),
          crossAxisCount: 4,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SegundaPage(
                            imgUrl: gridData.contents[index].image,
                            title: gridData.contents[index].title,
                          )));
                },
                child: Hero(
                  tag: gridData.contents[index].title,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            gridData.contents[index].title,
                            style: GoogleFonts.prompt(),
                          ),
                          const Spacer(),
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withOpacity(0.8)),
                              child: const Icon(
                                FontAwesomeIcons.heart,
                                size: 17,
                              ))
                        ],
                      ),
                    ),
                    height: size.height * 0.2,
                    width: size.width * 0.15,
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: const Offset(0, 3),
                              color: Colors.black.withOpacity(0.2))
                        ],
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: AssetImage(gridData.contents[index].image),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
          staggeredTileBuilder: (index) =>
              StaggeredTile.count(2, index.isEven ? 3 : 2));
    });
  }
}
