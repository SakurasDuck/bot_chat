

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../config/lock.dart';

typedef ListAudioListener = void Function(String url);

class ListAudioPlayer {
  AudioPlayer? _audioPlayer;
  final Lock _lock = Lock();
  final List<ListAudioListener> listenerList = <ListAudioListener>[];
  String? currentUrl;

  bool get inPlaying => _audioPlayer?.state == PlayerState.playing;

  void addListener(ListAudioListener listener) {
    listenerList.add(listener);
  }

  void removeListener(ListAudioListener listener) {
    listenerList.remove(listener);
  }

  Future<void> ensureInit() async {
    if (_audioPlayer != null) {
      return;
    }
    if (_lock.isUsing()) {
      await _lock.waitDone();
    } else {
      await _lock.lock();
      try {
        _audioPlayer = AudioPlayer()..setReleaseMode(ReleaseMode.stop);
        _audioPlayer!.onPlayerStateChanged.listen((status) {
          if (status == PlayerState.completed) {
            debugPrint('音频播放完毕');
          }
          if (_audioPlayer!.state == PlayerState.playing) {
            fireCallBack();
          }
        });
      } finally {
        _lock.unlock();
      }
    }
  }

  Future<void> play(String url) async {
    await ensureInit();
    currentUrl = url;
    await _audioPlayer!.play(DeviceFileSource(url));
    debugPrint('音频播放');
  }

  void fireCallBack() {
    for (var element in listenerList) {
      element(currentUrl!);
    }
  }

  void close() async {
    await ensureInit();
    await _audioPlayer!.release();
    _audioPlayer = null;
    debugPrint('chat close,销毁音频控制器');
  }
}
