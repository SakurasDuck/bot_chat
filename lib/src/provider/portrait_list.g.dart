// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portrait_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Portrait _$$_PortraitFromJson(Map<String, dynamic> json) => _$_Portrait(
      msgs: (json['msgs'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_PortraitToJson(_$_Portrait instance) =>
    <String, dynamic>{
      'msgs': instance.msgs,
      'name': instance.name,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatPortraitHash() => r'53f026184c3497cc2901d58cac0c3bdfbcd309c5';

/// See also [ChatPortrait].
@ProviderFor(ChatPortrait)
final chatPortraitProvider =
    AutoDisposeNotifierProvider<ChatPortrait, List<Portrait>>.internal(
  ChatPortrait.new,
  name: r'chatPortraitProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$chatPortraitHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChatPortrait = AutoDisposeNotifier<List<Portrait>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
