import 'package:fitness_app_mockup/widgets/bit_square_button.dart';
import 'package:fitness_app_mockup/widgets/layout.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: 'Progress',
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Placeholder(),
          ),
          Divider(color: Colors.transparent),
          Row(
            children: [
              _horizontalMenuButton(),
              _horizontalMenuButton(),
              _horizontalMenuButton(),
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

  Widget _horizontalMenuButton() {
    return Flexible(
      child: Placeholder(
        fallbackHeight: 60,
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
        child: BigSquareButton(),
      ),
    );
  }
}
