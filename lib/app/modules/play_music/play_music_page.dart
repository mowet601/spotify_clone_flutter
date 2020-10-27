import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'play_music_controller.dart';

class PlayMusicPage extends StatefulWidget {
  final String title;
  const PlayMusicPage({Key key, this.title = "PlayMusic"}) : super(key: key);

  @override
  _PlayMusicPageState createState() => _PlayMusicPageState();
}

class _PlayMusicPageState
    extends ModularState<PlayMusicPage, PlayMusicController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            pinned: false,
            stretch: true,
            floating: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Teste title"),
              centerTitle: true,
              background: Container(
                padding: EdgeInsets.all(60),
                child: Image(
                  image: AssetImage(
                    "images/pic2.jfif",
                  ),
                ),
              ),
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              color: Colors.green,
              height: 360,
            ),
            Container(
              color: Colors.red,
              height: 360,
            ),
          ]))
        ],
      ),
    );
  }
}
