import 'package:freezed_annotation/freezed_annotation.dart';

enum Role implements Comparable<String> {
  system('system'), //系统
  user('user'), //用户
  assistant('assistant'); //助手

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
