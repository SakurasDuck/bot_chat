import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../config/enums.dart';
import '../../../models/message.dart';
import '../chat_interface.dart';

part 'chat_state.g.dart';
part 'chat_state.freezed.dart';

///uuid
@Riverpod(keepAlive: true)
Uuid getUuid(GetUuidRef ref) => const Uuid();

///滚动控制器
@riverpod
class GetScrollerController extends _$GetScrollerController {
  @override
  ScrollController build() {
    final scrollCatrl = ScrollController();
    scrollCatrl.addListener(() {
      if (_isAnimating) return;

      //添加一个监听,当滚动到底部时,隐藏滚动到底部按钮
      if (isAtBottom) {
        ref.read(getShowMoreBtnProvider.notifier).hide();
      }
    });
    return scrollCatrl;
  }

  ///滚动到底部
  Future<void> scroll2Last() async {
    //如果正在滚动,则不执行
    if (_isAnimating) return;

    //如果不在底部,则滚动到底部
    if (!isAtBottom) {
      _isAnimating = true;
      return state
          .animateTo(state.position.minScrollExtent,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInQuad)
          .whenComplete(() => _isAnimating = false);
    }
  }

  ///是否在底部,误差10px
  bool get isAtBottom => state.offset <= state.position.minScrollExtent + 10.0;

  bool get isAnimating => _isAnimating;

  bool _isAnimating = false;
}

///获取是否显示滚动到底部按钮状态
@riverpod
class GetShowMoreBtn extends _$GetShowMoreBtn {
  @override
  ShowMoreBtn build() =>
      const ShowMoreBtn(show: false, lastRecordPointId: null);

  /// 显示滚动到底部按钮
  /// [lastRecordPointId] 最后一条消息的记录点
  void show(String lastRecordPointId) {
    state = state.copyWith(show: true, lastRecordPointId: lastRecordPointId);
  }

  void hide() {
    state = state.copyWith(show: false, lastRecordPointId: null);
    ref.read(getScrollerControllerProvider.notifier).scroll2Last();
  }
}

///用于判断列表是否动画到底部,这时不需要监听列表滚动事件
@riverpod
class GetScrolling extends _$GetScrolling {
  @override
  bool build() => false;
}

///是否显示滚动到底部按钮状态模型
@freezed
class ShowMoreBtn with _$ShowMoreBtn {
  const factory ShowMoreBtn({
    required bool show,
    required String? lastRecordPointId,
  }) = _ShowMoreBtn;

  factory ShowMoreBtn.fromJson(Map<String, dynamic> json) =>
      _$ShowMoreBtnFromJson(json);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ShowMoreBtn && other.show == show;
  }
}

///消息列表
@riverpod
class MessageStore extends _$MessageStore {
  @override
  List<Message> build() => <Message>[];

  @override
  bool updateShouldNotify(List<Message> previous, List<Message> next) {
    return true;
  }

  //修改
  void modify(List<Message> Function(List<Message> state) setState) {
    state = setState(super.state);
  }

  //发消息
  void sendMessage(dynamic msg) {
    //创建本地消息
    final msgId = ref.read<Uuid>(getUuidProvider).v1();
    final now = DateTime.now().millisecondsSinceEpoch;
    final upMsg = GetIt.instance
        .get<IChatActionProvider>()
        .convertUpMsg(upContent: msg, msgId: msgId, now: now);
    //添加到消息列表,并刷新 UI
    modify((state) => state..add(upMsg));

    //发送消息
    GetIt.instance
        .get<IChatActionProvider>()
        .sendMessage(upMsg)
        .then((value) => modify((state) {
              //发送成功,修改消息状态
              if (value) {
                final index = state.indexWhere((element) => element.msgId == msgId);
                if (index != -1) {
                  //todo 修改消息状态
                // state[index]= state[index].copyWith(upMessage: state[index].upMessage!.copyWith(status: SendMessageStatus.SENT));
                }
              }
              return state;
            }));
  }
}
