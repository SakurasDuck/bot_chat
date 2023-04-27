import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../common/chat_state.dart';
import '../common/drawer_ctrl.dart';

part 'chat_state.g.dart';

///输入框控制器
@riverpod
class GetTextEditController extends _$GetTextEditController {
  @override
  TextEditingController build() => TextEditingController();
}

/// 输入框焦点
@riverpod
class GetFocusNode extends _$GetFocusNode {
  @override
  TextInputFocusNode build() {
    final foucsNode = TextInputFocusNode();
    //监听焦点,获取焦点时,滚动到底部
    foucsNode.addListener(() {
      if (foucsNode.hasFocus) {
        //如果获取焦点时并没有设置OPENAI API KEY,则展开抽屉并高亮提示
        if (ref.read(needShowHighLightProvider)) {
          ref.read(toShowHighLightProvider);
          //弹出提示后,将焦点移除
          state.unfocus();
        } else {
          ref.read(getScrollerControllerProvider.notifier).scroll2Last();
        }
      }
    });
    return foucsNode;
  }
}
