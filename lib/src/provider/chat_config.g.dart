// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_config.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatModelHash() => r'b07634e7aff6304291bf96623f55c1c1c6808a99';

///聊天模型状态
///
/// Copied from [ChatModel].
@ProviderFor(ChatModel)
final chatModelProvider = NotifierProvider<ChatModel, String>.internal(
  ChatModel.new,
  name: r'chatModelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$chatModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChatModel = Notifier<String>;
String _$botPortraitHash() => r'f3fb688b167240cc73137b12ab66d27e53ecbec3';

///聊天画像状态
///
/// Copied from [BotPortrait].
@ProviderFor(BotPortrait)
final botPortraitProvider = NotifierProvider<BotPortrait, Portrait?>.internal(
  BotPortrait.new,
  name: r'botPortraitProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$botPortraitHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BotPortrait = Notifier<Portrait?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
