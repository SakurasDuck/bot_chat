import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'portrait_list.g.dart';
part 'portrait_list.freezed.dart';

@riverpod
// 聊天系统画像
class ChatPortrait extends _$ChatPortrait {
  @override
  List<Portrait> build() => [];

  void addPortrait(String name, List<String> portraitDescribe) {
    state = state..add(Portrait(msgs: portraitDescribe, name: name));
  }

  @override
  bool updateShouldNotify(List<Portrait> previous, List<Portrait> next) {
    return true;
  }
}

@freezed
class Portrait with _$Portrait {
  const factory Portrait({
    //消息
    required List<String> msgs,
    //画像名称
    required String name,
  }) = _Portrait;

  factory Portrait.fromJson(Map<String, dynamic> json) =>
      _$PortraitFromJson(json);
}
