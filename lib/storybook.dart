import 'package:dashbook/dashbook.dart';
import 'package:fitness_app_mockup/widgets/big_square_button.dart';
import 'package:fitness_app_mockup/widgets/stats_text.dart';
import 'package:fitness_app_mockup/widgets/steps_counter.dart';
import 'package:flutter/material.dart';

final _dashbook = Dashbook();

class Storybook extends StatelessWidget {
  const Storybook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _dashbook.storiesOf('StepsCounter')
      ..decorator(_GreyBackgroundDecorator())
      ..add('default', (ctx) => StepsCounter());

    _dashbook.storiesOf('StatsText')
      ..decorator(CenterDecorator())
      ..add(
        'default',
        (ctx) => StatsText(
          title: 'Title',
          subtitle: 'Subtitle',
        ),
      );

    _dashbook.storiesOf('BigSquareButton')
      ..decorator(CenterDecorator())
      ..add(
        'default',
        (ctx) => Container(
          width: 200,
          height: 300,
          color: Colors.green,
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(child: Text('This is a background')),
              SizedBox(height: 20),
              BigSquareButton(
                title: 'Active',
                icon: Icon(Icons.cancel),
                subtitle: '2 Times a day',
                gradientColor: Colors.blue,
              ),
            ],
          ),
        ),
      );

    return Container(child: _dashbook);
  }
}

class _GreyBackgroundDecorator extends Decorator {
  @override
  Widget decorate(Widget child) => Container(
        child: child,
        color: Colors.grey,
      );
}
