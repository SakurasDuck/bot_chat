// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_config.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$modeConfigHash() => r'ba98792509afb308568812494174a793ceb1c3f0';

/// See also [ModeConfig].
@ProviderFor(ModeConfig)
final modeConfigProvider = NotifierProvider<ModeConfig, ChatMode>.internal(
  ModeConfig.new,
  name: r'modeConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$modeConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ModeConfig = Notifier<ChatMode>;
String _$getOpenAPIKeyHash() => r'4057171e0c4b16d7c4c863f64dbc784083a82a96';

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
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
