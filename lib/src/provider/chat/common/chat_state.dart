import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';


part 'chat_state.g.dart';
part 'chat_state.freezed.dart';

///uuid
@Riverpod(keepAlive: true)
Uuid getUuid(GetUuidRef ref) => const Uuid();


///滚动控制器
@riverpod
class GetScrollerController extends _$GetScrollerController {
  @override
  ScrollController build() {
    final scrollCatrl = ScrollController();
    scrollCatrl.addListener(() {
      if (_isAnimating) return;

      //添加一个监听,当滚动到底部时,隐藏滚动到底部按钮
      if (isAtBottom) {
        ref.read(getShowMoreBtnProvider.notifier).hide();
      }
    });
    return scrollCatrl;
  }

  ///滚动到底部
  Future<void> scroll2Last() async {
    //如果正在滚动,则不执行
    if (_isAnimating) return;

    //如果不在底部,则滚动到底部
    if (!isAtBottom) {
      _isAnimating = true;
      return state
          .animateTo(state.position.minScrollExtent,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInQuad)
          .whenComplete(() => _isAnimating = false);
    }
  }

  ///是否在底部,误差10px
  bool get isAtBottom => state.offset <= state.position.minScrollExtent + 10.0;

  bool get isAnimating => _isAnimating;

  bool _isAnimating = false;
}


///获取是否显示滚动到底部按钮状态
@riverpod
class GetShowMoreBtn extends _$GetShowMoreBtn {
  @override
  ShowMoreBtn build() =>
      const ShowMoreBtn(show: false, lastRecordPointId: null);

  /// 显示滚动到底部按钮
  /// [lastRecordPointId] 最后一条消息的记录点
  void show(String lastRecordPointId) {
    state = state.copyWith(show: true, lastRecordPointId: lastRecordPointId);
  }

  void hide() {
    state = state.copyWith(show: false, lastRecordPointId: null);
    ref.read(getScrollerControllerProvider.notifier).scroll2Last();
  }
}

///用于判断列表是否动画到底部,这时不需要监听列表滚动事件
@riverpod
class GetScrolling extends _$GetScrolling {
  @override
  bool build() => false;
}

///是否显示滚动到底部按钮状态模型
@freezed
class ShowMoreBtn with _$ShowMoreBtn {
  const factory ShowMoreBtn({
    required bool show,
    required String? lastRecordPointId,
  }) = _ShowMoreBtn;

  factory ShowMoreBtn.fromJson(Map<String, dynamic> json) =>
      _$ShowMoreBtnFromJson(json);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ShowMoreBtn && other.show == show;
  }
}
