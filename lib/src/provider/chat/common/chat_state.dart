import 'package:chat_ui/src/provider/splash_load.dart';
import 'package:darq/darq.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../config/types.dart';
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
  late Cancel cancelListener;

  @override
  List<Message> build() {
    //初始化时加载监听
    cancelListener =
        GetIt.instance.get<IChatActionProvider>().listenMessage((msg) {
      //添加机器人回复消息,并刷新 UI
      _modify((state) => state..add(msg));

      //收到消息后判断是否显示滚到底部按钮或者滚动到底部
      if (!ref.read(getShowMoreBtnProvider).show) {
        if (ref.read(getScrollerControllerProvider.notifier).isAtBottom) {
          //因为是同步的,所以需要等待下一帧渲染之后在滚动列表
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            ref.read(getScrollerControllerProvider.notifier).scroll2Last();
          });
        } else {
          //显示滚动到底部按钮
          //todo 这里实现需要重新设计(在滑动时已读消息?)
          ref.read(getShowMoreBtnProvider.notifier).show(
              state.lastWhere((element) => element.isUpMessage == true).msgId);
        }
      }
    });
    ref.onDispose(() {
      //销毁时关闭监听
    });
    return <Message>[];
  }

  @override
  bool updateShouldNotify(List<Message> previous, List<Message> next) {
    return true;
  }

  //修改
  void _modify(List<Message> Function(List<Message> state) setState) {
    state = setState(super.state);
  }

  //发消息
  Future<void> _sendMessage(String msg) async {
    //创建本地消息
    final msgId = ref.read<Uuid>(getUuidProvider).v1();
    final now = DateTime.now().millisecondsSinceEpoch;
    final upMsg = GetIt.instance
        .get<IChatActionProvider>()
        .convertUpMsg(upContent: msg, msgId: msgId, now: now);
    //添加到消息列表,并刷新 UI
    _modify((state) => state..add(upMsg));

    //因为是同步的,所以需要等待下一帧渲染之后在滚动列表
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      //发送消息,chat_list要滚动到底部
      ref.read(getScrollerControllerProvider.notifier).scroll2Last();
    });

    await _doSendMessage(msgId);
  }

  ///重发消息
  Future<void> resend(String msgId) async {
    //查询消息
    final msg = state.firstWhereOrDefault((element) => element.msgId == msgId);
    if (msg == null || msg.isUpMessage != true) {
      //如果消息不存在或者消息不是上行消息,则不执行
      return;
    }
    //先本地修改状态
    _modify((state) {
      //发送完成,修改消息状态
      final index = state.indexWhere((element) => element.msgId == msgId);
      if (index != -1) {
        state[index].upMessage!.reSending();
      }
      return state;
    });

    await _doSendMessage(msgId);
  }

  ///执行上行消息
  Future<void> _doSendMessage(String msgId) async {
    final upMsg =
        state.firstWhereOrDefault((element) => element.msgId == msgId);
    //发送消息
    final value = await GetIt.instance
        .get<IChatActionProvider>()
        .sendMessage(this, upMsg!);
    _modify((state) {
      //发送完成,修改消息状态
      final index = state.indexWhere((element) => element.msgId == msgId);
      if (index != -1) {
        if (value) {
          state[index].upMessage!.sent();
        } else {
          state[index].upMessage!.sendError();
        }
      }

      return state;
    });
  }

  ///加载历史消息
  Future<void> loadHistoryMessage() async {
    //加载历史消息
    final historyMsgs =
        await GetIt.instance.get<IChatActionProvider>().loadingHistoryMessage();
    //添加到消息列表,并刷新 UI
    if (historyMsgs.isNotEmpty) {
      _modify((state) => state..insertAll(0, historyMsgs));
      //在渲染完成之后滚动到底部
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        ref.read(getScrollerControllerProvider.notifier).scroll2Last();
      });
    }
  }

  ///重置聊天
  Future<void> resetChat() async {
    //清空消息列表
    _modify((state) => state..clear());
    //重置聊天
    GetIt.instance.get<IChatActionProvider>().resetChat();
  }

  ///构建上行消息内容
  Widget buildUpMsgContent(Message msg) {
    return GetIt.instance
        .get<IChatUIProvider>()
        .buildUpMessageItem(msg.upMessage!);
  }

  ///构建下行消息内容
  Widget buildDownMsgContent(Message msg) {
    return GetIt.instance
        .get<IChatUIProvider>()
        .buildDownMessageItem(msg.downMessage!);
  }

  ///构建消息输入组件
  Widget buildMsgInput() {
    return GetIt.instance
        .get<IChatUIProvider>()
        .buildMessageInput((msg) => _sendMessage(msg));
  }
}
