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
          border: Border.all(
            color: Colors.white,
          ),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            '2450',
            style: TextStyle(
              // TODO change text colors in theme.
              fontSize: 43,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
