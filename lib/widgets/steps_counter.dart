import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StepsCounter extends StatelessWidget {
  const StepsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Color(0xff030305);
    return InkWell(
      child: Container(
        child: Center(
          child: _buildTexts(),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 38),
        constraints: BoxConstraints(
          minHeight: 175,
          maxHeight: 175,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          gradient: LinearGradient(
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
            begin: const FractionalOffset(0.0, 1.0),
            end: const FractionalOffset(1.0, 0.01),
            colors: [backgroundColor, Color(0xff545357)],
          ),
        ),
      ),
    );
  }

  Widget _buildTexts() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Today\'s steps',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '2450',
          style: TextStyle(
            fontSize: 43,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Goal: 10000',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
