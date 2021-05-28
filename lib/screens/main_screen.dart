import 'package:fitness_app_mockup/widgets/bit_square_button.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Progress'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
    return BigSquareButton();
  }
}
