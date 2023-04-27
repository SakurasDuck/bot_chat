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

///获取是否显示滚动到底部按钮状态
///
/// Copied from [GetShowMoreBtn].
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
String _$messageStoreHash() => r'91f994392f466a470bf5a42319b0805abf6c3b72';

///消息列表
///
/// Copied from [MessageStore].
@ProviderFor(MessageStore)
final messageStoreProvider = AutoDisposeNotifierProvider<MessageStore,
    List<Message<UpMessageStatus, dynamic>>>.internal(
  MessageStore.new,
  name: r'messageStoreProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$messageStoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MessageStore
    = AutoDisposeNotifier<List<Message<UpMessageStatus, dynamic>>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
