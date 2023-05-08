// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_player_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$audioPlayerControllerHash() =>
    r'd6f6b022e14bb76b2a06c9e41ea09f307649c250';

///语音播放控制器(主要作用协调同时只能播放一个语音)
///
/// Copied from [AudioPlayerController].
@ProviderFor(AudioPlayerController)
final audioPlayerControllerProvider = AutoDisposeNotifierProvider<
    AudioPlayerController, ListAudioPlayer>.internal(
  AudioPlayerController.new,
  name: r'audioPlayerControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$audioPlayerControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AudioPlayerController = AutoDisposeNotifier<ListAudioPlayer>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
