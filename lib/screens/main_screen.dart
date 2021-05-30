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
      title: 'Progress',
      child: Column(
        children: [
          StepsCounter(),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatsText(title: '30', subtitle: 'Days'),
              StatsText(title: '45.2%', subtitle: 'Improvement'),
              StatsText(title: '125K', subtitle: 'Steps'),
            ],
          ),
          Divider(color: Colors.transparent),
          Row(
            children: [
              _bigSquareButton(),
              _bigSquareButton(),
            ],
          ),
          Divider(color: Colors.transparent),
          Row(
            children: [
              _bigSquareButton(),
              _bigSquareButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget _bigSquareButton() {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          left: 8,
          right: 8,
          bottom: 0,
        ),
        child: BigSquareButton(gradientColor: Colors.blue),
      ),
    );
  }
}
