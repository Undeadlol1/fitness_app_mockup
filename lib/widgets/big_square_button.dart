import 'package:flutter/material.dart';

class BigSquareButton extends StatelessWidget {
  BigSquareButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: _decoration,
    );
  }

  final _decoration = BoxDecoration(
    border: Border.all(color: Colors.black),
    borderRadius: BorderRadius.circular(30),
    gradient: LinearGradient(
      colors: [
        Colors.transparent,
        Colors.black,
      ],
      stops: [0.8, 1.0],
      tileMode: TileMode.clamp,
      begin: const FractionalOffset(0.0, 1.0),
      end: const FractionalOffset(1.0, 0.2),
    ),
  );
}
