// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_config.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatModelHash() => r'2a53fb32287f4b3262111c14d0493e7d890cd5ce';

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
String _$botPortraitHash() => r'fa098e133486ab94c786ba185fc074f645dc0394';

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
