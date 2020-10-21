import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'card_music_controller.g.dart';

@Injectable()
class CardMusicController = _CardMusicControllerBase with _$CardMusicController;

abstract class _CardMusicControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
