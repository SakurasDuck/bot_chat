import 'package:bot_toast/bot_toast.dart';
import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../config/enums.dart';
import '../services/chat_api.dart';
import '../services/chat_state.dart';
import '../services/message.dart';
import 'chat_config.dart';

part 'chat_state.g.dart';
part 'chat_state.freezed.dart';

///发送消息接口
@riverpod
Future<ChatResponse> getChat(GetChatRef ref, List<ReqMessage> reqMessage) {
  //获取当前模型
  final model = ref.read(chatModelProvider);
  return GetIt.instance
      .get<ChatAPI>()
      .chat(model: model, reqMessage: reqMessage);
}

@Riverpod(dependencies: [getChat, getUuid, ChatModel])
class ChatStore extends _$ChatStore {
  @override
  List<ChatState> build() => <ChatState>[];

  @override
  bool updateShouldNotify(List<ChatState> previous, List<ChatState> next) {
    return true;
  }

  void modify(List<ChatState> Function(List<ChatState> state) setState) {
    state = setState(super.state);
  }

  ///发送消息
  ///[content] 内容
  Future<void> sendMessage(String content) async {
    //创建本地消息
    final msgId = ref.read<Uuid>(getUuidProvider).v1();
    final userMsg = ChatState(
        msgId: msgId,
        createTimeStamp: DateTime.now().millisecondsSinceEpoch,
        fromMe: SendMessage(
            message: ReqMessage(content: content, role: Role.USER.toString()),
            status: SendMessageStatus.SENDING));
    //添加到消息列表,并刷新 UI
    modify((state) => state..add(userMsg));

    //因为是同步的,所以需要等待下一帧渲染之后在滚动列表
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      //发送消息,chat_list要滚动到底部
      ref.read(getScrollerControllerProvider.notifier).scroll2Last();
    });

    // Future.delayed(const Duration(seconds: 2)).then((value) {
    //   modify((state) {
    //     final index = state.indexWhere((element) => element.msgId == msgId);
    //     state[index] = state[index].copyWith(
    //         fromMe:
    //             state[index].fromMe!.copyWith(status: SendMessageStatus.SENT));
    //     return state;
    //   });
    // });
    // return;

    //发送请求
    return _request(msgId);
  }

  ///重新发送消息
  Future<void> resendMEssage(String msgId) async {
    //发送请求
    return _request(msgId);
  }

  ///调用请求发送消息
  Future<void> _request(String msgId) async {
    //发送消息
    SendMessageStatus requestStatus = SendMessageStatus.ERROR;
    final response =
        await ref.read(GetChatProvider(_getReqMessage()).future).then((value) {
      requestStatus = SendMessageStatus.SENT;
      return value;
    }).catchError((e) {
      requestStatus = SendMessageStatus.ERROR;
      throw e;
    }).whenComplete(() {
      //修改本地消息状态, 并刷新 UI
      modify((state) {
        final index = state.indexWhere((element) => element.msgId == msgId);
        state[index] = state[index].copyWith(
            fromMe: state[index].fromMe!.copyWith(status: requestStatus));
        return state;
      });
    });

    final lastMsgId = state.last.msgId;

    //添加机器人回复消息,并刷新 UI
    modify((state) => state
      ..add(ChatState(
          msgId: ref.read(getUuidProvider).v1(),
          createTimeStamp: DateTime.now().millisecondsSinceEpoch,
          fromBot: response)));

    //收到消息后判断是否显示滚到底部按钮或者滚动到底部
    if (!ref.read(getShowMoreBtnProvider).show) {
      if (ref.read(getScrollerControllerProvider.notifier).isAtBottom) {
        //因为是同步的,所以需要等待下一帧渲染之后在滚动列表
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ref.read(getScrollerControllerProvider.notifier).scroll2Last();
        });
      } else {
        //显示滚动到底部按钮
        ref.read(getShowMoreBtnProvider.notifier).show(lastMsgId);
      }
    }
  }

  ///清空消息列表
  void resetContent() {
    modify((state) => state..clear());
  }

  //将历史消息转换为reqMesaage
  List<ReqMessage> _getReqMessage() {
    final msgs = <ReqMessage>[];
    //先添加设定消息
    final botPortrait = ref.read(botPortraitProvider);
    if (botPortrait != null) {
      msgs.addAll(botPortrait.msgs
          .map((e) => ReqMessage(content: e, role: Role.SYSTEM.toString())));
    }

    msgs.addAll(state
        .where((element) =>
            element.fromBot != null ||
            (element.fromMe != null &&
                element.fromMe?.status != SendMessageStatus.ERROR))
        .map<ReqMessage>((e) {
      if (e.fromMe != null) {
        return ReqMessage(
            content: e.fromMe!.message.content, role: Role.USER.toString());
      } else {
        return ReqMessage(
            content: e.fromBot!.choices.first.message.content,
            role: Role.ASSISTANT.toString());
      }
    }).toList());
    return msgs;
  }
}

///uuid
@Riverpod(keepAlive: true)
Uuid getUuid(GetUuidRef ref) => const Uuid();

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
        ref.read(getScrollerControllerProvider.notifier).scroll2Last();
      }
    });
    return foucsNode;
  }
}

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
