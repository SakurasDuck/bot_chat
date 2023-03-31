import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_portrait_state.g.dart';

@riverpod
class PortraitMsg extends _$PortraitMsg {
  @override
  List<String> build() => [];

  @override
  bool updateShouldNotify(List<String> previous, List<String> next) {
    return true;
  }

  void addMsg() {
    state = state..add(ref.read(addMsgControllerProvider).text);
  }
}

@riverpod
TextEditingController portraitNameController(PortraitNameControllerRef ref) {
  return TextEditingController();
}

@riverpod
TextEditingController addMsgController(AddMsgControllerRef ref) {
  return TextEditingController();
}
