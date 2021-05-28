import 'package:flutter/material.dart';

class BigSquareButton extends StatelessWidget {
  const BigSquareButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Placeholder(
        fallbackHeight: 180,
      ),
    );
  }
}
