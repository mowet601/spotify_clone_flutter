import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_clone_flutter/app/modules/home/pages/start/components/card_music/card_music_widget.dart';
import 'package:spotify_clone_flutter/app/modules/home/pages/start/components/title_area/title_area_widget.dart';

import 'start_controller.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key key, this.title = "Start"}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),*/
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: false,
            snap: false,
            backgroundColor: Colors.grey.withOpacity(0.0),
            actions: [
              IconButton(
                iconSize: 28,
                color: Colors.grey[200],
                icon: Icon(Icons.settings),
                onPressed: () {},
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              TitleAreaWidget(title: "Tocadas Recentemente"),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: <Widget>[
                    CardMusicWidget(
                      label: "Top Hits",
                      image: "pic1.jfif",
                    ),
                    CardMusicWidget(
                      label: "Mix Tape",
                      image: "pic2.jfif",
                    ),
                    CardMusicWidget(
                      label: "Punjabi 101",
                      image: "pic3.jfif",
                    ),
                    CardMusicWidget(
                      label: "Punjabi Top 50",
                      image: "pic4.jfif",
                    ),
                    CardMusicWidget(
                      label: "Punjabi 101",
                      image: "pic5.jpg",
                    ),
                    CardMusicWidget(
                      label: "Latin Rizing",
                      image: "pic6.jpg",
                    ),
                    CardMusicWidget(
                      label: "Latin Divas",
                      image: "pic7.jfif",
                    ),
                    CardMusicWidget(
                      label: "Friday Latin",
                      image: "pic8.jpg",
                    ),
                    CardMusicWidget(
                      label: "New Music",
                      image: "pic9.jpg",
                    ),
                    CardMusicWidget(
                      label: "Latin Divas",
                      image: "pic10.jfif",
                    ),
                  ])),
              TitleAreaWidget(title: "Programas que talvez você curta"),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: <Widget>[
                    CardMusicWidget(
                      label: "Top Hits",
                      image: "pic1.jfif",
                    ),
                    CardMusicWidget(
                      label: "Mix Tape",
                      image: "pic2.jfif",
                    ),
                    CardMusicWidget(
                      label: "Punjabi 101",
                      image: "pic3.jfif",
                    ),
                    CardMusicWidget(
                      label: "Punjabi Top 50",
                      image: "pic4.jfif",
                    ),
                    CardMusicWidget(
                      label: "Punjabi 101",
                      image: "pic5.jpg",
                    ),
                    CardMusicWidget(
                      label: "Latin Rizing",
                      image: "pic6.jpg",
                    ),
                    CardMusicWidget(
                      label: "Latin Divas",
                      image: "pic7.jfif",
                    ),
                    CardMusicWidget(
                      label: "Friday Latin",
                      image: "pic8.jpg",
                    ),
                    CardMusicWidget(
                      label: "New Music",
                      image: "pic9.jpg",
                    ),
                    CardMusicWidget(
                      label: "Latin Divas",
                      image: "pic10.jfif",
                    ),
                  ])),
              TitleAreaWidget(title: "Tocadas Recentemente"),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: <Widget>[
                    CardMusicWidget(
                      label: "Top Hits",
                      image: "pic1.jfif",
                    ),
                    CardMusicWidget(
                      label: "Mix Tape",
                      image: "pic2.jfif",
                    ),
                    CardMusicWidget(
                      label: "Punjabi 101",
                      image: "pic3.jfif",
                    ),
                    CardMusicWidget(
                      label: "Punjabi Top 50",
                      image: "pic4.jfif",
                    ),
                    CardMusicWidget(
                      label: "Punjabi 101",
                      image: "pic5.jpg",
                    ),
                    CardMusicWidget(
                      label: "Latin Rizing",
                      image: "pic6.jpg",
                    ),
                    CardMusicWidget(
                      label: "Latin Divas",
                      image: "pic7.jfif",
                    ),
                    CardMusicWidget(
                      label: "Friday Latin",
                      image: "pic8.jpg",
                    ),
                    CardMusicWidget(
                      label: "New Music",
                      image: "pic9.jpg",
                    ),
                    CardMusicWidget(
                      label: "Latin Divas",
                      image: "pic10.jfif",
                    ),
                  ])),
            ]),
          )
        ],
      ),
    );
  }
}
