import 'package:flutter/material.dart';

class BigSquareButton extends StatelessWidget {
  final Widget icon;
  final String title;
  final String subtitle;
  final Color gradientColor;
  BigSquareButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.gradientColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          Column(
            children: [
              SizedBox(height: 27),
              Text(
                title,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 5),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
        ],
      ),
      decoration: _decoration,
    );
  }

  get _decoration {
    return BoxDecoration(
      color: Color(0xff0B0A0F),
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
