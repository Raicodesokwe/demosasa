import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hustlepapa/shader/shadericon.dart';

class StarRating extends StatefulWidget {
  final int maximumRating;
  final Function(int) onRatingSelected;

  const StarRating(this.onRatingSelected, [this.maximumRating = 5]);

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _currentRating = 0;
  _buildRatingStar(int index) {
    if (index < _currentRating) {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: GradientIcon(
          gradient: LinearGradient(colors: [Colors.orange, Colors.deepOrange]),
          child: Icon(
            FontAwesomeIcons.solidStar,
            size: 18,
            color: Color(0xFFFEC18A),
          ),
        ),
      );
    } else {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: Icon(
          FontAwesomeIcons.star,
          size: 18,
        ),
      );
    }
  }

  _buildBody() {
    //we are in a different private class mantaining the state thus we have to call it from outside
    final stars = List<Widget>.generate(widget.maximumRating, (index) {
      //function to be called everytime loop is run
      return GestureDetector(
        child: _buildRatingStar(index),
        onTap: () {
          setState(() {
            _currentRating = index + 1;
          });
        },
      );
    });
    return Row(
      children: stars,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
