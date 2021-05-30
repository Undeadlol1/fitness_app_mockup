import 'package:flutter/material.dart';

class StatsText extends StatelessWidget {
  final String title;
  final String subtitle;
  StatsText({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(title, style: textTheme.headline4),
        SizedBox(height: 10),
        Text(subtitle, style: textTheme.caption),
      ],
    );
  }
}
