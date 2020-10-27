import 'play_music_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'play_music_page.dart';

class PlayMusicModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PlayMusicController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => PlayMusicPage()),
      ];

  static Inject get to => Inject<PlayMusicModule>.of();
}
