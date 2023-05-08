import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:record/record.dart';
import 'package:record/record.dart' as record_enum;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'record_controller.g.dart';
part 'record_controller.freezed.dart';

typedef CancelFunc = void Function();

@riverpod
class RecordController extends _$RecordController {
  CancelFunc? cancelFunc;

  @override
  bool updateShouldNotify(RecordState previous, RecordState next) {
    return previous.durationByMilliSecond != next.durationByMilliSecond;
  }

  @override
  RecordState build() {
    final record = Record();
    record.onStateChanged().listen((event) {
      if (event == record_enum.RecordState.stop) {
        modify((state) => state..isRecording = false);
      }
      if (event == record_enum.RecordState.record) {
        modify((state) => state..isRecording = true);
      }
      if (event == record_enum.RecordState.pause) {
        modify((state) => state..isRecording = false);
      }
    });
    record
        .onAmplitudeChanged(const Duration(milliseconds: 100))
        .listen((event) {
      modify((state) => state..amplitude = event);
    });
    ref.onDispose(() {
      record.dispose();
      cancelFunc?.call();
    });
    return RecordState(record: record);
  }

  void modify(RecordState Function(RecordState state) modify) {
    state = modify(state);
  }

  Future<bool> startRecord(String path) async {
    try {
      cancelFunc =
          Timer.periodic(const Duration(milliseconds: 100), (timer) async {
        state.durationByMilliSecond += 100;
      }).cancel;
      await state.record.start(path: path);
      return true;
    } catch (e) {
      debugPrint('startRecord error:$e');
      return false;
    }
  }

  Future<void> stopRecord() async {
    try {
      await state.record.stop();
      cancelFunc?.call();
    } catch (e) {
      debugPrint('stopRecord error:$e');
    }
  }
}

@Freezed(addImplicitFinal: false)
class RecordState with _$RecordState {
  factory RecordState({
    required Record record,
    @Default(false) bool isRecording,
    @Default(0) int durationByMilliSecond,
    Amplitude? amplitude,
  }) = _RecordState;
}
