import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:showcaseview/showcaseview.dart';

import 'chat_config.dart';

part 'drawer_ctrl.g.dart';

///抽屉控制 key
@riverpod
class DrawerCtrlKey extends _$DrawerCtrlKey {
  @override
  GlobalKey<SliderDrawerState> build() => GlobalKey<SliderDrawerState>();

  // 打开抽屉
  void openDrawer() {
    if (state.currentState == null) {
      debugPrint('state.currentState==null');
      return;
    }
    state.currentState?.openSlider();
  }

  // 切换
  void toggle() {
    if (state.currentState == null) {
      debugPrint('state.currentState==null');
      return;
    }
    state.currentState?.toggle();
  }
}

///抽屉OPENAI API Key高亮 key
@riverpod
class HighLightKey extends _$HighLightKey {
  @override
  GlobalKey build() => GlobalKey();
}

// 当用户没有设置OPENAI API Key时,高亮提示
@riverpod
void toShowHighLight(ToShowHighLightRef ref) {
  //展开抽屉
  ref.read(drawerCtrlKeyProvider.notifier).openDrawer();
  //高亮提示(因为展开抽屉是异步的)
  Future.delayed(const Duration(milliseconds: 400)).then((_) {
    //这里的context 通过抽屉的key去获取,理论上不会为空,但是感觉这种方法可以优化
    final context = ref.read(drawerCtrlKeyProvider).currentContext;
    if (context != null && context.mounted) {
      //执行高亮
      ShowCaseWidget.of(ref.read(drawerCtrlKeyProvider).currentContext!)
          .startShowCase([ref.read(highLightKeyProvider)]);
    }
  });
}

@riverpod
bool needShowHighLight(NeedShowHighLightRef ref) {
  //如果没有设置OPENAI API Key,则高亮提示
  return ref.watch(getOpenAPIKeyProvider).isEmpty;
}
