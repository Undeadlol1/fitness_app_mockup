import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:dashbook/dashbook.dart';
import 'package:fitness_app_mockup/widgets/stats_text.dart';
import 'package:fitness_app_mockup/screens/main_screen.dart';
import 'package:fitness_app_mockup/states/viewer_state.dart';
import 'package:fitness_app_mockup/widgets/steps_counter.dart';
import 'package:fitness_app_mockup/widgets/big_square_button.dart';
import 'package:fitness_app_mockup/widgets/bezier_lines_wrapper.dart';

class Storybook extends StatefulWidget {
  const Storybook({Key? key}) : super(key: key);

  @override
  _StorybookState createState() => _StorybookState();
}

class _StorybookState extends State<Storybook> {
  @override
  void initState() {
    super.initState();
    Get.put(ViewerState());
  }

  @override
  Widget build(BuildContext context) {
    final _dashbook = Dashbook();
    _dashbook.storiesOf('MainScreen')
      ..decorator(_GreyBackgroundDecorator())
      ..add('default', (ctx) => MainScreen());

    _dashbook.storiesOf('BezierLinesWrapper')
      ..decorator(CenterDecorator())
      ..add(
        'default',
        (ctx) => BezierLinesWrapper(
          child: Container(
            color: Colors.red,
            child: Text('This is a child'),
            constraints: BoxConstraints(
              maxWidth: 100,
              maxHeight: 100,
              minHeight: 100,
              minWidth: 100,
            ),
          ),
        ),
      );

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

    return _dashbook;
  }
}

class _GreyBackgroundDecorator extends Decorator {
  @override
  Widget decorate(Widget child) => Container(
        child: child,
        color: Colors.grey,
      );
}
