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
String _$botPortraitHash() => r'669d5e6936ab7a032ec5b4b91ea787ce3c515ae2';

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
String _$proxyConfigHash() => r'c3e654ea9eac4f47f58be4dcb927929b52c052ef';

///设置代理
///
/// Copied from [ProxyConfig].
@ProviderFor(ProxyConfig)
final proxyConfigProvider =
    AutoDisposeNotifierProvider<ProxyConfig, String?>.internal(
  ProxyConfig.new,
  name: r'proxyConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$proxyConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProxyConfig = AutoDisposeNotifier<String?>;
String _$getOpenAPIKeyHash() => r'db6a7d313d6641b216a783777be9913a73af639e';

/// See also [GetOpenAPIKey].
@ProviderFor(GetOpenAPIKey)
final getOpenAPIKeyProvider =
    AutoDisposeNotifierProvider<GetOpenAPIKey, String>.internal(
  GetOpenAPIKey.new,
  name: r'getOpenAPIKeyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getOpenAPIKeyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetOpenAPIKey = AutoDisposeNotifier<String>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
