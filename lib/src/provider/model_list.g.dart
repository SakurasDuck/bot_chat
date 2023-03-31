// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$modelCanSaveHash() => r'0aa99a2ab547d5b8e2efbf1bc15ae9f3b74111c8';

/// See also [modelCanSave].
@ProviderFor(modelCanSave)
final modelCanSaveProvider = AutoDisposeProvider<bool>.internal(
  modelCanSave,
  name: r'modelCanSaveProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$modelCanSaveHash,
  dependencies: <ProviderOrFamily>[chatModelProvider, modelListEffectProvider],
  allTransitiveDependencies: <ProviderOrFamily>[
    chatModelProvider,
    modelListEffectProvider
  ],
);

typedef ModelCanSaveRef = AutoDisposeProviderRef<bool>;
String _$modelListEffectHash() => r'ce8f4424a21d81479bb20af8bd84347c8dcd1f05';

/// See also [ModelListEffect].
@ProviderFor(ModelListEffect)
final modelListEffectProvider =
    AutoDisposeNotifierProvider<ModelListEffect, String>.internal(
  ModelListEffect.new,
  name: r'modelListEffectProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$modelListEffectHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ModelListEffect = AutoDisposeNotifier<String>;
String _$modelListStateHash() => r'7ef4c5af0f3839f016bea879d7fb855871efa9ba';

/// See also [ModelListState].
@ProviderFor(ModelListState)
final modelListStateProvider =
    AutoDisposeNotifierProvider<ModelListState, List<Model>>.internal(
  ModelListState.new,
  name: r'modelListStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$modelListStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ModelListState = AutoDisposeNotifier<List<Model>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
