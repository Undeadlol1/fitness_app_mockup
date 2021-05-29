import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StepsCounter extends StatelessWidget {
  const StepsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 38),
        constraints: BoxConstraints(
          minHeight: 175,
          maxHeight: 175,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
        child: Center(
          child: Column(
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
          ),
        ),
      ),
    );
  }
}
