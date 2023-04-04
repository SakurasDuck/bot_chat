import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_portrait_state.g.dart';

@riverpod
class GetPortraitMsg extends _$GetPortraitMsg {
  @override
  List<String> build() => [];

  @override
  bool updateShouldNotify(List<String> previous, List<String> next) {
    return true;
  }

  void addMsg() {
    final ctrl = ref.read(getEditMsgControllerProvider);
    state = state..add(ctrl.text);

    ref.read(getShowEditMsgInputProvider.notifier).onChange();
    ctrl.text = '';
  }
}

@riverpod
class GetPortraitNameController extends _$GetPortraitNameController {
  @override
  TextEditingController build() => TextEditingController();
}

@riverpod
class GetEditMsgController extends _$GetEditMsgController {
  @override
  TextEditingController build() => TextEditingController();
}

@riverpod
class GetShowEditMsgInput extends _$GetShowEditMsgInput {
  @override
  bool build() => false;

  void onChange() {
    state = !state;
  }
}

@riverpod
class GetEditMsgFocusNode extends _$GetEditMsgFocusNode {
  @override
  FocusNode build() => FocusNode();
}

@Riverpod(dependencies: [GetPortraitMsg, GetPortraitNameController])
bool getShowSaveBtn(GetShowSaveBtnRef ref) {
  return ref.watch(getPortraitMsgProvider).isNotEmpty &&
      ref.watch(getPortraitNameControllerProvider).text.isNotEmpty;
}
