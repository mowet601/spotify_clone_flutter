import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_clone_flutter/app/modules/home/pages/library/library_page.dart';
import 'package:spotify_clone_flutter/app/modules/home/pages/search/search_page.dart';
import 'package:spotify_clone_flutter/app/modules/home/pages/start/start_page.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  var _arrayPage = [
    StartPage(),
    SearchPage(),
    LibraryPage(),
  ];

  var _bottomNavBarItens = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Início',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Buscar',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.menu),
      label: 'Sua Biblioteca',
    ),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          return _arrayPage[controller.indexTab];
        },
      ),
      bottomNavigationBar: Observer(
        builder: (_) {
          return BottomNavigationBar(
            onTap: controller.setIndexTab,
            currentIndex: controller.indexTab,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.white,
            items: _bottomNavBarItens,
          );
        },
      ),
    );
  }
}
