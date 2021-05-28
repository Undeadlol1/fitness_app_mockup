import 'package:flutter/material.dart';

class StepsCounter extends StatelessWidget {
  const StepsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 200,
        padding: EdgeInsets.all(10),
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
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
