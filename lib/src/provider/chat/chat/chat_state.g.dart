// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTextEditControllerHash() =>
    r'f10575fdf697978b05f7982efc4fe1ce422bfb20';

///输入框控制器
///
/// Copied from [GetTextEditController].
@ProviderFor(GetTextEditController)
final getTextEditControllerProvider = AutoDisposeNotifierProvider<
    GetTextEditController, TextEditingController>.internal(
  GetTextEditController.new,
  name: r'getTextEditControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getTextEditControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetTextEditController = AutoDisposeNotifier<TextEditingController>;
String _$getFocusNodeHash() => r'b253a9d5ef119e03604d002d836108144b6acea5';

/// 输入框焦点
///
/// Copied from [GetFocusNode].
@ProviderFor(GetFocusNode)
final getFocusNodeProvider =
    AutoDisposeNotifierProvider<GetFocusNode, TextInputFocusNode>.internal(
  GetFocusNode.new,
  name: r'getFocusNodeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getFocusNodeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetFocusNode = AutoDisposeNotifier<TextInputFocusNode>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
