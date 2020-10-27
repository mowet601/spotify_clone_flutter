// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_music_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PlayMusicController = BindInject(
  (i) => PlayMusicController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlayMusicController on _PlayMusicControllerBase, Store {
  final _$valueAtom = Atom(name: '_PlayMusicControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_PlayMusicControllerBaseActionController =
      ActionController(name: '_PlayMusicControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_PlayMusicControllerBaseActionController.startAction(
        name: '_PlayMusicControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PlayMusicControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
