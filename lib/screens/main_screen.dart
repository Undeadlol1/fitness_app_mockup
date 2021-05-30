import 'package:fitness_app_mockup/widgets/big_square_button.dart';
import 'package:fitness_app_mockup/widgets/layout.dart';
import 'package:fitness_app_mockup/widgets/stats_text.dart';
import 'package:fitness_app_mockup/widgets/steps_counter.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Column(
        children: [
          StepsCounter(),
          SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatsText(title: '30', subtitle: 'Days'),
              StatsText(title: '45.2%', subtitle: 'Improvement'),
              StatsText(title: '125K', subtitle: 'Steps'),
            ],
          ),
          SizedBox(height: 27),
          _SquareButtons(),
        ],
      ),
    );
  }
}

class _SquareButtons extends StatelessWidget {
  const _SquareButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            _buttonWrapper(
              child: BigSquareButton(
                title: 'Active',
                icon: Icon(Icons.cancel),
                subtitle: '2 Times a day',
                gradientColor: Colors.blueAccent,
              ),
            ),
            _buttonWrapper(
              child: BigSquareButton(
                title: 'Running',
                icon: Icon(Icons.cancel),
                subtitle: '3 Times a day',
                gradientColor: Colors.yellowAccent,
              ),
            ),
          ],
        ),
        Divider(color: Colors.transparent),
        Row(
          children: [
            _buttonWrapper(
              child: BigSquareButton(
                title: 'Study',
                icon: Icon(Icons.cancel),
                subtitle: '2 Times a day',
                gradientColor: Colors.greenAccent,
              ),
            ),
            _buttonWrapper(
              child: BigSquareButton(
                title: 'Dinner',
                icon: Icon(Icons.cancel),
                subtitle: '1 Time a day',
                gradientColor: Colors.redAccent,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _buttonWrapper({required Widget child}) {
    final double horizontalPadding = 14.0;
    return Flexible(
      child: Padding(
        child: child,
        padding: EdgeInsets.only(
          top: 8,
          bottom: 0,
          left: horizontalPadding,
          right: horizontalPadding,
        ),
      ),
    );
  }
}
