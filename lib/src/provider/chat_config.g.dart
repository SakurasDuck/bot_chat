// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SystemMsg _$$_SystemMsgFromJson(Map<String, dynamic> json) => _$_SystemMsg(
      msgs: (json['msgs'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_SystemMsgToJson(_$_SystemMsg instance) =>
    <String, dynamic>{
      'msgs': instance.msgs,
      'name': instance.name,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatModelHash() => r'b07634e7aff6304291bf96623f55c1c1c6808a99';

/// See also [ChatModel].
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
String _$chatPortraitHash() => r'f03b1bfc9260008f866af9a516034076ac95c4ac';

/// See also [ChatPortrait].
@ProviderFor(ChatPortrait)
final chatPortraitProvider =
    AutoDisposeNotifierProvider<ChatPortrait, List<SystemMsg>>.internal(
  ChatPortrait.new,
  name: r'chatPortraitProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$chatPortraitHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChatPortrait = AutoDisposeNotifier<List<SystemMsg>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
