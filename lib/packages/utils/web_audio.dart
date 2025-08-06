import 'dart:html' as html;

import 'package:flutter/foundation.dart';

class WebAudioQueuePlayer {
  final List<String> audioQueue = [];
  html.AudioElement? currentAudio;
  bool isPlaying = false;

  void playSequentially(List<String> base64Audios) {
    // _stopCurrentAudio();
    audioQueue.clear();
    audioQueue.addAll(base64Audios);
    _playNext();
  }

  void _playNext() {
    if (audioQueue.isEmpty) {
      isPlaying = false;
      if (kDebugMode) print('모든 오디오 재생 완료!');
      return;
    }

    final nextSrc = audioQueue.removeAt(0);
    currentAudio = html.AudioElement()
      ..src = nextSrc
      ..autoplay = true
      ..onEnded.listen((_) {
        _playNext(); // 다음 오디오로 넘어감
      })
      ..onError.listen((e) {
        if (kDebugMode) print('오디오 에러 발생, 다음으로 넘어감.');
        _playNext();
      });

    // html.document.body?.append(currentAudio!); // 필요시
    isPlaying = true;
  }

  void _stopCurrentAudio() {
    if (currentAudio != null) {
      currentAudio!.pause(); // 재생 중단
      currentAudio!.currentTime = 0; // 처음으로 이동
      // currentAudio!.remove(); // DOM에서 제거 (선택 사항)
      currentAudio = null;
      isPlaying = false;
      if (kDebugMode) print('현재 오디오 정지됨');
    }
  }
}
