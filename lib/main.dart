import 'package:fitness_app_mockup/states/viewer_state.dart';
import 'package:fitness_app_mockup/storybook.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app_mockup/screens/main_screen.dart';
import 'package:get/get.dart';

void main() {
  final bool isStorybookEnabled = true;
  runApp(isStorybookEnabled ? Storybook() : MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Get.put(ViewerState());
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MainScreen(),
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
    );
  }
}
