import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';

typedef RefreshFunc = Future<void> Function();

/// 页面 下拉加载 效果
/// [canLoadMore] 是否可以加载更多
/// [refreshFunc] 刷新的方法
/// [loadMoreFunc] 加载更多的方法
/// [firstFunc] 第一次进页面刷新，只使用一次
class Refresh extends StatefulWidget {
  final RefreshFunc refreshFunc;

  final Widget child;

  const Refresh({
    required this.child,
    required this.refreshFunc,
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RefreshState createState() => _RefreshState();
}

class _RefreshState extends State<Refresh> {
  AsyncMemoizer<void> asyncMemoizer = AsyncMemoizer<void>();
  bool handleLoadMoreing = false;

  @override
  Widget build(BuildContext context) {
    Widget w = widget.child;
    w = RefreshIndicator(
        //下拉的高度
        displacement: 100,
        //转动箭头的大小
        strokeWidth: 5,
        color: const Color(0xff666666),
        backgroundColor: const Color(0xfff2f2f2),
        child: w,
        onRefresh: () => widget.refreshFunc());

    return FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              if (snapshot.hasError) {
                Future(() {
                  //必须异步抛出异常
                  throw snapshot.error!;
                });
                return Center(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        asyncMemoizer = AsyncMemoizer<void>();
                      });
                    },
                    child: const Text(
                      '出错啦点击我重试',
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 26,
                      ),
                    ),
                  ),
                );
              }
              return w;
            case ConnectionState.waiting:
              return const Align(
                alignment: Alignment(0.0, -0.75),
                child: RefreshProgressIndicator(
                  backgroundColor: Color(0xfff2f2f2),
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xff666666),
                  ),
                ),
              );
            default:
              return Container();
          }
        },
        future: asyncMemoizer.runOnce(() => widget.refreshFunc()));
  }
}
