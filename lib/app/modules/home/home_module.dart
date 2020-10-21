import 'pages/start/components/card_music/card_music_controller.dart';
import 'pages/library/library_controller.dart';
import 'pages/search/search_controller.dart';
import 'pages/start/start_controller.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CardMusicController,
        $LibraryController,
        $SearchController,
        $StartController,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
