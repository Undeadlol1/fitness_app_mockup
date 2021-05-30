import 'package:flutter/material.dart';

class BigSquareButton extends StatelessWidget {
  final Color gradientColor;
  BigSquareButton({Key? key, required this.gradientColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: _decoration,
    );
  }

  get _decoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.transparent),
      gradient: LinearGradient(
        colors: [
          Colors.transparent,
          gradientColor,
        ],
        stops: [0.7, 1.0],
        tileMode: TileMode.clamp,
        begin: const FractionalOffset(0.0, 1.0),
        end: const FractionalOffset(1.0, 0.01),
      ),
    );
  }
}
