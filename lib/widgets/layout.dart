import 'package:fitness_app_mockup/states/viewer_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

class Layout extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget? floatingActionButton;
  const Layout({
    Key? key,
    required this.title,
    required this.body,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backGroundColor = Colors.black;
    return PixelPerfect(
      scale: 1.1,
      initBottom: 20,
      initOpacity: 0.4,
      offset: Offset(-307.5, -82),
      assetPath: 'assets/design_screenshot.webp',
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backGroundColor,
          title: Center(child: Text(this.title)),
          actions: [
            _buildUserAvatar(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [_loginOrLogoutButton()],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: this.body,
            color: backGroundColor,
            padding: const EdgeInsets.only(
              top: 20,
              left: 15,
              right: 15,
              bottom: 0,
            ),
          ),
        ),
        floatingActionButton: this.floatingActionButton,
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
        onTap: () {},
        // onTap: () => Get.toNamed(MainScreen.path),
        child: viewerPhoto.isEmpty ? null : Image.network(viewerPhoto),
      ),
    );
  }

  Widget _loginOrLogoutButton() {
    final viewerState = Get.find<ViewerState>();

    if (viewerState.isLoading) {
      return Container();
    }

    final bool isViewerSignedIn = viewerState.viewer != null;
    return ListTile(
      onTap: () {},
      // onTap: isViewerSignedIn ? logOut : () => Get.toNamed(SignInScreen.path),
      title: Text(
        isViewerSignedIn ? 'Выйти' : 'Войти',
        textAlign: TextAlign.center,
      ),
    );
  }
}
