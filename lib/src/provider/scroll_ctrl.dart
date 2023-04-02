import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scroll_ctrl.g.dart';

@riverpod
ScrollController getScrollController(GetScrollControllerRef ref) =>
    ScrollController();
