import 'package:flutter/material.dart';

class BigSquareButton extends StatelessWidget {
  const BigSquareButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: _decoration,
    );
  }
}

final _decoration = BoxDecoration(
  border: Border.all(color: Colors.black),
  borderRadius: BorderRadius.circular(30),
  gradient: LinearGradient(
    stops: [0.0, 1.0],
    colors: [
      Colors.white,
      Colors.black,
    ],
    tileMode: TileMode.clamp,
    end: const FractionalOffset(1.0, 0.0),
    begin: const FractionalOffset(0.0, 0.0),
  ),
);
