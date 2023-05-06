import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:uuid/uuid.dart';

import '../../../config/const.dart';
import '../../../config/enums.dart';
import '../../../kv_store/kvstore.dart';
import '../../../models/message.dart';
import '../../../models/speech_2_text/audio_up_message.dart';
import '../../../models/speech_2_text/text_down_message.dart';
import '../../../services/speech_2_text_api.dart';
import '../../../ui/components/chat_builder/speech_2_text/item/down_message_builder.dart';
import '../../../ui/components/chat_builder/speech_2_text/item/up_msg_budiler.dart';
import '../../../ui/components/chat_builder/speech_2_text/title.dart';
import '../../../ui/components/chat_builder/speech_2_text/voice_input.dart';
import '../../../ui/widgets/common_appbar_builder.dart';
import '../chat_interface.dart';
import '../common/chat_state.dart';

class ImageGenActionsInstance
    extends IChatActionProvider<AudioUpMessage, TextDownMessage, AudioModel> {
  @override
  void resetChat() {
    //_cacheMessage() 已经删除了缓存
  }

  @override
  Future<List<Message<AudioUpMessage, TextDownMessage>>>
      loadingHistoryMessage() async {
    final cache = await kvStore.getString(CACHED_SPEECH_2_TEXT_MSG_LIST);
    if (cache == null) {
      return [];
    } else {
      final List<Message<AudioUpMessage, TextDownMessage>> historyMsgs =
          (jsonDecode(cache) as List<dynamic>)
              .map<Message<AudioUpMessage, TextDownMessage>>((e) =>
                  Message.fromJson(e, (t) {
                    if (t is Map<String, dynamic>) {
                      return AudioUpMessage.fromJson(t);
                    }
                    throw Exception('upMessage is not Map<String,dynamic>');
                  }, (k) {
                    if (k is Map<String, dynamic>) {
                      return TextDownMessage.fromJson(k);
                    }
                    throw Exception('downMessage is not Map<String,dynamic>');
                  }))
              .toList();
      return historyMsgs;
    }
  }

  @override
  Future<bool> sendMessage(MessageStore store, upMsg) async {
    bool result = false;

    await GetIt.instance
        .get<Speech2TextApi>()
        .getSpeech2Text(upMsg.upMessage!.audioPath)
        .then((value) {
      result = true;
      final now = DateTime.now().millisecondsSinceEpoch;
      notifier(Message(
          msgId: store.ref.read<Uuid>(getUuidProvider).v1(),
          createTime: now,
          updateTime: now,
          downMessage: TextDownMessage(
            text: value.text,
          )));
    }).catchError((e) {
      result = false;
      debugPrint('发送消息失败: $e');
    });
    return result;
  }

  @override
  Message<AudioUpMessage, TextDownMessage> convertUpMsg(
      {required String msgId,
      required int now,
      required AudioModel upContent}) {
    return Message(
        msgId: msgId,
        createTime: now,
        updateTime: now,
        upMessage: AudioUpMessage(
          status: SendMessageStatus.SENDING,
          audioPath: upContent.audioPath,
          audioLength: upContent.audioLength,
        ));
  }

  //缓存消息
  void _cacheMessage(List<Message<AudioUpMessage, TextDownMessage>> msgs) {
    if (msgs.isEmpty) {
      kvStore.remove(CACHED_IMAGE_GEN_MSG_LIST);
    } else {
      kvStore.setString(
          CACHED_IMAGE_GEN_MSG_LIST,
          jsonEncode(msgs, toEncodable: (o) {
            if (o is Message<AudioUpMessage, TextDownMessage>) {
              return o.toJson((t) => t.toJson(), (k) => k.toJson());
            } else {
              return jsonEncode(o);
            }
          }));
    }
  }

  @override
  bool updateShouldNotify(List<Message> previous, List<Message> next) {
    //在这里缓存消息(这是个败笔,调用过于频繁)
    _cacheMessage(next.cast<Message<AudioUpMessage, TextDownMessage>>());
    return true;
  }
}


class ImageGenUIsInstance
    extends IChatUIProvider<AudioUpMessage, TextDownMessage, AudioModel> {
  @override
  List<Widget> buildDrawerMenus() {
    return <Widget>[];
  }

  @override
  Widget buildDownMessageItem(downMsg) {
    return Speech2TextDownMessageContent(
      downMsg: downMsg,
    );
  }

  @override
  Widget buildMessageInput(SendMessageFunc<AudioModel> sendMessage) {
    return VoiceMsgInput(
      sendVoiceMsg: (String path,int duration) {
        sendMessage(AudioModel(audioPath: path,audioLength: Duration(seconds: duration)));
      },
    );
  }

  @override
  Widget buildUpMessageItem(upMsg) {
    return VoiceUpMsgBuilder(
      upMsg: upMsg,
    );
  }

  @override
  Widget buildChatView(
      Widget drawerMenu, Widget chatView, Widget chatInputView) {
    return CommonChatViewBuilder(
      title: const Speech2TextTitle(),
      drawerMenu: drawerMenu,
      chatInputView: chatInputView,
      chatView: chatView,
    );
  }
}