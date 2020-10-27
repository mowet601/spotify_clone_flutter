import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'play_music_controller.g.dart';

@Injectable()
class PlayMusicController = _PlayMusicControllerBase with _$PlayMusicController;

abstract class _PlayMusicControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
