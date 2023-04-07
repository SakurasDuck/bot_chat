// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portrait_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Portrait _$$_PortraitFromJson(Map<String, dynamic> json) => _$_Portrait(
      msgs: (json['msgs'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      source: $enumDecode(_$PortraitSourceEnumMap, json['source']),
    );

Map<String, dynamic> _$$_PortraitToJson(_$_Portrait instance) =>
    <String, dynamic>{
      'msgs': instance.msgs,
      'name': instance.name,
      'source': _$PortraitSourceEnumMap[instance.source]!,
    };

const _$PortraitSourceEnumMap = {
  PortraitSource.ASSETS: 0,
  PortraitSource.USER: 1,
  PortraitSource.NETWORK: 2,
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loadPortraitsFromAssetsHash() =>
    r'dc97f894d462530e5828377abb2d905bac69260f';

/// See also [loadPortraitsFromAssets].
@ProviderFor(loadPortraitsFromAssets)
final loadPortraitsFromAssetsProvider =
    AutoDisposeFutureProvider<List<Portrait>>.internal(
  loadPortraitsFromAssets,
  name: r'loadPortraitsFromAssetsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loadPortraitsFromAssetsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LoadPortraitsFromAssetsRef
    = AutoDisposeFutureProviderRef<List<Portrait>>;
String _$chatPortraitHash() => r'a47342ed7428c6bd8a954bfa3a2366ab81864625';

/// See also [ChatPortrait].
@ProviderFor(ChatPortrait)
final chatPortraitProvider =
    AutoDisposeNotifierProvider<ChatPortrait, List<Portrait?>>.internal(
  ChatPortrait.new,
  name: r'chatPortraitProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$chatPortraitHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChatPortrait = AutoDisposeNotifier<List<Portrait?>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
