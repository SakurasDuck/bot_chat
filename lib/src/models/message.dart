import 'package:freezed_annotation/freezed_annotation.dart';

import '../config/enums.dart';

part 'message.freezed.dart';
part 'message.g.dart';

///消息
@Freezed(genericArgumentFactories: true)
class Message<T extends UpMessageStatus, K> extends BaseMessageStruct
    with _$Message<T, K> {
  @Assert('upMessage != null || downMessage != null', '消息不能为空')
  @Implements<UpMessageStruct<T>>()
  @Implements<DownMessageStruct<K>>()
  const factory Message({
    required String msgId,
    required int createTime,
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
  final int updateTime;
}

///上行消息结构体
abstract class UpMessageStatus {
  UpMessageStatus(this.status);
  final SendMessageStatus status;
}

