import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:fitness_app_mockup/states/viewer_state.dart';

class Layout extends StatelessWidget {
  final String title;
  final Widget child;
  const Layout({
    Key? key,
    this.title = '',
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backGroundColor = Color(0xff080810);
    return PixelPerfect(
      scale: 1.1,
      initBottom: 20,
      initOpacity: 0.2,
      offset: Offset(-307.5, -82),
      assetPath: 'assets/design_screenshot.webp',
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.share),
          backgroundColor: backGroundColor,
          title: Center(child: Text(title)),
          actions: [
            _buildUserAvatar(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: this.child,
            color: backGroundColor,
            padding: const EdgeInsets.only(
              top: 20,
              left: 15,
              right: 15,
              bottom: 0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserAvatar() {
    final viewerState = Get.find<ViewerState>();
    final String viewerPhoto = viewerState.viewer?.picture ?? '';

    return Container(
      width: 35,
      margin: const EdgeInsets.only(right: 15),
      child: InkWell(
        child: viewerPhoto.isEmpty ? null : Image.network(viewerPhoto),
      ),
    );
  }
}
