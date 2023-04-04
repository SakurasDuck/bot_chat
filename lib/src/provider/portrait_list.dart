import 'dart:convert';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/enums.dart';
import 'add_portrait_state.dart';

part 'portrait_list.g.dart';
part 'portrait_list.freezed.dart';

@riverpod
// 聊天系统画像
class ChatPortrait extends _$ChatPortrait {
  @override
  List<Portrait> build() => [];

  //添加画像
  bool addPortrait() {
    final name = ref.read(getPortraitNameControllerProvider).text;
    final portraitDescribe = ref.read(getPortraitMsgProvider);
    //验证画像名称是否重复
    if (state.any((element) => element.name == name)) {
      BotToast.showText(text: '画像名称不能重复');
      return false;
    }

    //todo 本地缓存
    state = state
      ..add(Portrait(
          msgs: portraitDescribe, name: name, source: PortraitSource.USER));
    return true;
  }

  @override
  bool updateShouldNotify(List<Portrait> previous, List<Portrait> next) {
    return true;
  }

  //加载画像
  Future<void> onRefresh() async {
    //资源文件
    final asset = ref.read(loadPortraitsFromAssetsProvider.future);
    //todo 本地缓存-user
    // final user= cache
    //todo 网络请求
    // final net= net

    //合并请求
    final result = await Future.wait<List<Portrait>>([asset]);
    state = result
        .fold([], (previousValue, element) => previousValue..addAll(element));
  }
}

@freezed
class Portrait with _$Portrait {
  const factory Portrait({
    //消息
    required List<String> msgs,
    //画像名称
    required String name,
    //画像来源
    required PortraitSource source,
  }) = _Portrait;

  factory Portrait.fromJson(Map<String, dynamic> json) =>
      _$PortraitFromJson(json);
}

//load portrait from assets
@riverpod
Future<List<Portrait>> loadPortraitsFromAssets(
    loadPortraitsFromAssetsRef) async {
  try {
    final json = await rootBundle.loadString('assets/files/portraits.json');
    final list = jsonDecode(json) as List;
    return list.map((e) => Portrait.fromJson(e)).toList();
  } catch (e) {
    debugPrint(e.toString());
    return [];
  }
}
