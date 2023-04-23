// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShowMoreBtn _$$_ShowMoreBtnFromJson(Map<String, dynamic> json) =>
    _$_ShowMoreBtn(
      show: json['show'] as bool,
      lastRecordPointId: json['lastRecordPointId'] as String?,
    );

Map<String, dynamic> _$$_ShowMoreBtnToJson(_$_ShowMoreBtn instance) =>
    <String, dynamic>{
      'show': instance.show,
      'lastRecordPointId': instance.lastRecordPointId,
    };

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

String _$getUuidHash() => r'285f6e29be3b2138fba48e8fcf3a22ddb98db1cb';

///uuid
///
/// Copied from [getUuid].
@ProviderFor(getUuid)
final getUuidProvider = Provider<Uuid>.internal(
  getUuid,
  name: r'getUuidProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getUuidHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetUuidRef = ProviderRef<Uuid>;
String _$chatStoreHash() => r'971015ca0a0fd0859409fb23f9942cd675795940';

/// See also [ChatStore].
@ProviderFor(ChatStore)
final chatStoreProvider =
    AutoDisposeNotifierProvider<ChatStore, List<ChatState>>.internal(
  ChatStore.new,
  name: r'chatStoreProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$chatStoreHash,
  dependencies: <ProviderOrFamily>[
    getChatProvider,
    getUuidProvider,
    chatModelProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>[
    getChatProvider,
    getUuidProvider,
    chatModelProvider
  ],
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
String _$getFocusNodeHash() => r'6f779300dd8e5d2f9750672c22d45d5158ac27db';

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
String _$getScrollerControllerHash() =>
    r'd47593cf8c2b69619918f39d8243a8d526879c70';

///滚动控制器
///
/// Copied from [GetScrollerController].
@ProviderFor(GetScrollerController)
final getScrollerControllerProvider = AutoDisposeNotifierProvider<
    GetScrollerController, ScrollController>.internal(
  GetScrollerController.new,
  name: r'getScrollerControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getScrollerControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetScrollerController = AutoDisposeNotifier<ScrollController>;
String _$getShowMoreBtnHash() => r'd44d56cdfc07a0fd2f54e375a99e7b71ce814465';

/// See also [GetShowMoreBtn].
@ProviderFor(GetShowMoreBtn)
final getShowMoreBtnProvider =
    AutoDisposeNotifierProvider<GetShowMoreBtn, ShowMoreBtn>.internal(
  GetShowMoreBtn.new,
  name: r'getShowMoreBtnProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getShowMoreBtnHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetShowMoreBtn = AutoDisposeNotifier<ShowMoreBtn>;
String _$getScrollingHash() => r'ac2ad3d98567b2c82b125000fb86b408a0d7985f';

///用于判断列表是否动画到底部,这时不需要监听列表滚动事件
///
/// Copied from [GetScrolling].
@ProviderFor(GetScrolling)
final getScrollingProvider =
    AutoDisposeNotifierProvider<GetScrolling, bool>.internal(
  GetScrolling.new,
  name: r'getScrollingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getScrollingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetScrolling = AutoDisposeNotifier<bool>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
