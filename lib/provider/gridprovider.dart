import 'package:flutter/material.dart';

import 'package:hustlepapa/model/gridmodel.dart';

class GridProvider with ChangeNotifier {
  final List<GridList> _contents = [
    GridList(
      title: 'Nike',
      image: 'assets/nikeforce.jpg',
      
    ),
    GridList(
      title: 'Reebok',
      image: 'assets/reebok.jpg',
      
    ),
    GridList(
      title: 'Vans',
      image: 'assets/shoes.jpg',
      
    ),
    GridList(
      title: 'Enda',
      image: 'assets/enda.png',
      
    ),
    GridList(
      title: 'Adidas',
      image: 'assets/dida.jpg',
      
    ),
    GridList(
      title: 'Allbirds',
      image: 'assets/allbirds.png',
      
    ),
    GridList(
      title: 'Doc Martens',
      image: 'assets/martens.jpg',
      
    ),
    GridList(
      title: 'Zara',
      image: 'assets/zara.jpg',
      
    ),
    GridList(
      title: 'Yeezy',
      image: 'assets/zara.jpg',
      
    ),
  ];
  List<GridList> get contents {
    return [..._contents];
  }
}
