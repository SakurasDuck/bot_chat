import 'package:freezed_annotation/freezed_annotation.dart';

enum Role implements Comparable<String> {
  SYSTEM('system'), //系统
  USER('user'), //用户
  ASSISTANT('assistant'); //助手

  const Role(this.value);

  @override
  String toString() => value;

  @override
  int compareTo(String other) => value.compareTo(other);

  final String value;
}

@JsonEnum(valueField: 'value')
enum PortraitSource implements Comparable<int> {
  //资源文件
  ASSETS(0),
  //用户
  USER(1),
  //网络
  NETWORK(2);

  const PortraitSource(this.value);

  final int value;

  @override
  String toString() => value.toString();

  @override
  int compareTo(int other) => value.compareTo(other);
}

//发送状态
enum SendMessageStatus { SENDING, SENT, ERROR }

///对话模式
enum ChatMode with Comparable<String> {
  CHAT('问答'),
  IMAGE_GEN('画图'),
  //speech to text
  ASR('语音转文字');

  const ChatMode(this.value);
  final String value;
  @override
  String toString() => value;

  @override
  int compareTo(String other) => value.compareTo(other);
}
