import 'dart:ui';
import 'package:flutter/material.dart';

class BezierLinesWrapper extends StatelessWidget {
  final Widget child;
  final double animationProgressInPercentages;
  BezierLinesWrapper({
    Key? key,
    required this.child,
    this.animationProgressInPercentages = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: child,
      foregroundPainter: _Painter(),
    );
  }
}

class _Painter extends CustomPainter {
  late Size _size;
  late Canvas _canvas;

  @override
  void paint(Canvas canvas, Size size) {
    _size = size;
    _canvas = canvas;

    _drawACurve();
  }

  void _drawACurve() {
    final Path path = Path();
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.black
      ..strokeWidth = 2;

    path.cubicTo(
      _size.width / 4,
      3 * _size.height / 4,
      3 * _size.width / 4,
      _size.height / 4,
      _size.width,
      _size.height,
    );

    path.relativeQuadraticBezierTo(
      _size.width / 4,
      3 * _size.height / 4,
      3 * _size.width / 4,
      _size.height / 4,
    );

    _canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
