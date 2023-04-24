// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getChatHash() => r'f92da0e6a8f26b51ae98b51cd825a8d66e1e5c34';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef GetChatRef = AutoDisposeFutureProviderRef<ChatResponse>;

///发送消息接口
///
/// Copied from [getChat].
@ProviderFor(getChat)
const getChatProvider = GetChatFamily();

///发送消息接口
///
/// Copied from [getChat].
class GetChatFamily extends Family<AsyncValue<ChatResponse>> {
  ///发送消息接口
  ///
  /// Copied from [getChat].
  const GetChatFamily();

  ///发送消息接口
  ///
  /// Copied from [getChat].
  GetChatProvider call(
    List<ReqMessage> reqMessage,
  ) {
    return GetChatProvider(
      reqMessage,
    );
  }

  @override
  GetChatProvider getProviderOverride(
    covariant GetChatProvider provider,
  ) {
    return call(
      provider.reqMessage,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getChatProvider';
}

///发送消息接口
///
/// Copied from [getChat].
class GetChatProvider extends AutoDisposeFutureProvider<ChatResponse> {
  ///发送消息接口
  ///
  /// Copied from [getChat].
  GetChatProvider(
    this.reqMessage,
  ) : super.internal(
          (ref) => getChat(
            ref,
            reqMessage,
          ),
          from: getChatProvider,
          name: r'getChatProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getChatHash,
          dependencies: GetChatFamily._dependencies,
          allTransitiveDependencies: GetChatFamily._allTransitiveDependencies,
        );

  final List<ReqMessage> reqMessage;

  @override
  bool operator ==(Object other) {
    return other is GetChatProvider && other.reqMessage == reqMessage;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, reqMessage.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$chatStoreHash() => r'a59e80ef6a8e2a845fe3033e050a30666eb2ff2e';

/// See also [ChatStore].
@ProviderFor(ChatStore)
final chatStoreProvider =
    AutoDisposeNotifierProvider<ChatStore, List<ChatState>>.internal(
  ChatStore.new,
  name: r'chatStoreProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$chatStoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChatStore = AutoDisposeNotifier<List<ChatState>>;
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
