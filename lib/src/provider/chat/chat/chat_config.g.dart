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
String _$proxyConfigHash() => r'df4d4b5db677cc1381842925ef0f19c63d8a0b39';

///设置代理
///
/// Copied from [ProxyConfig].
@ProviderFor(ProxyConfig)
final proxyConfigProvider = NotifierProvider<ProxyConfig, String>.internal(
  ProxyConfig.new,
  name: r'proxyConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$proxyConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProxyConfig = Notifier<String>;
String _$getOpenAPIKeyHash() => r'4e3c7f69e53181f36917339b1d58cbee47ae8fa7';

/// See also [GetOpenAPIKey].
@ProviderFor(GetOpenAPIKey)
final getOpenAPIKeyProvider = NotifierProvider<GetOpenAPIKey, String>.internal(
  GetOpenAPIKey.new,
  name: r'getOpenAPIKeyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getOpenAPIKeyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetOpenAPIKey = Notifier<String>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
