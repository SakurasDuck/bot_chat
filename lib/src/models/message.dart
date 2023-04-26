import 'package:freezed_annotation/freezed_annotation.dart';

import '../config/enums.dart';

part 'message.freezed.dart';
part 'message.g.dart';

///消息
@Freezed(genericArgumentFactories: true, addImplicitFinal: false)
class Message<T extends UpMessageStatus, K> extends BaseMessageStruct
    with _$Message<T, K> {
  @Assert('upMessage != null || downMessage != null', '消息不能为空')
  @Implements.fromString('UpMessageStruct<T>')
  @Implements.fromString('DownMessageStruct<K>')
  factory Message({
    required final String msgId,
    required final int createTime,
    required int updateTime,
    T? upMessage,
    K? downMessage,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json,
          T Function(Object?) fromJsonT, K Function(Object?) fromJsonK) =>
      _$MessageFromJson(json, fromJsonT, fromJsonK);
}

///判断消息来源
extension MessageFrom on Message {
  bool get isUpMessage => upMessage != null;

  bool get isDownMessage => downMessage != null;
}

//上行消息结构体
abstract class UpMessageStruct<T> {
  T? get upMessage;
}

//下行消息结构体
abstract class DownMessageStruct<K> {
  K? get downMessage;
}

///消息基础结构体
abstract class BaseMessageStruct {
  BaseMessageStruct(this.msgId, this.createTime, this.updateTime);
  final String msgId;
  final int createTime;
  int updateTime;
}

extension ModifyBaseMessageStruct on BaseMessageStruct {
  //更新时间
  void update() {
    updateTime = DateTime.now().millisecondsSinceEpoch;
  }
}

///上行消息结构体
abstract class UpMessageStatus {
  UpMessageStatus(this.status);
  SendMessageStatus status;
}

extension ModifyUpMessageStatus on UpMessageStatus {
  //发送完成
  void sent() {
    status = SendMessageStatus.SENT;
  }

  //发送失败
  void sendError() {
    status = SendMessageStatus.ERROR;
  }

  //重发
  void reSending() {
    status = SendMessageStatus.SENDING;
  }
}
