// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

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

/// See also [getChat].
@ProviderFor(getChat)
const getChatProvider = GetChatFamily();

/// See also [getChat].
class GetChatFamily extends Family<AsyncValue<ChatResponse>> {
  /// See also [getChat].
  const GetChatFamily();

  /// See also [getChat].
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

/// See also [getChat].
class GetChatProvider extends AutoDisposeFutureProvider<ChatResponse> {
  /// See also [getChat].
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

/// See also [getUuid].
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
String _$getControllerHash() => r'ac692413f0ea10a30fd4ebb4a838143b4829aa0b';

/// See also [getController].
@ProviderFor(getController)
final getControllerProvider =
    AutoDisposeProvider<TextEditingController>.internal(
  getController,
  name: r'getControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetControllerRef = AutoDisposeProviderRef<TextEditingController>;
String _$chatStoreHash() => r'3874895007b3aa5315adbd0b3bbc30495d81bafc';

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
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
