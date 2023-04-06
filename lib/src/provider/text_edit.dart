import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_edit.g.dart';

@riverpod
class GetTextEditCtrl extends _$GetTextEditCtrl {
  @override
  TextEditingController build() => TextEditingController();
}
