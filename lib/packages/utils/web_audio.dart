// import 'dart:html' as html;
import 'dart:js_interop';
import 'package:web/web.dart' as web;

import 'package:flutter/foundation.dart';

class WebAudioQueuePlayer {
  final List<String> audioQueue = [];
  // html.AudioElement? currentAudio;
  web.HTMLAudioElement? currentAudio;
  bool isPlaying = false;
  // Store event stream subscriptions to cancel them later if needed
  JSFunction? _onEndedListener;
  JSFunction? _onErrorListener;

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
    // Create AudioElement using package:web
    // HTMLAudioElement is available directly or via document.createElement
    currentAudio = web.HTMLAudioElement();
    // Or: web.document.createElement('audio') as web.HTMLAudioElement;
    currentAudio!.src = nextSrc;
    currentAudio!.autoplay = true;

    // Event handling with package:web
    // Listeners need to be JSFunctions. You may need to wrap your Dart callbacks.

    // Remove previous listeners if they exist to avoid multiple triggers
    if (_onEndedListener != null) {
      currentAudio!.removeEventListener('ended', _onEndedListener);
    }
    if (_onErrorListener != null) {
      currentAudio!.removeEventListener('error', _onErrorListener);
    }

    _onEndedListener = () {
      if (kDebugMode) print('Audio ended, playing next.');
      _playNext(); // 다음 오디오로 넘어감
    }.toJS; // Convert Dart closure to JSFunction

    _onErrorListener = (web.Event event) {
      // The event type is web.Event
      if (kDebugMode) print('오디오 에러 발생: ${event.type}, 다음으로 넘어감.');
      _playNext();
    }.toJS; // Convert Dart closure to JSFunction

    currentAudio!.addEventListener('ended', _onEndedListener);
    currentAudio!.addEventListener('error', _onErrorListener);

    // Optional: Appending to body is usually not needed for audio to play,
    // but if you encounter issues, it's a troubleshooting step.
    // web.document.body?.append(currentAudio!);

    isPlaying = true;
    // Attempt to play explicitly, as autoplay might be restricted by browsers
    currentAudio!.play().toDart.catchError((Object error) {
      if (kDebugMode) {
        print('Error attempting to play audio: ${error.toString()}');
      }
      // If play() is rejected, try to move to the next audio.
      _playNext();
      return null;
    });

    // currentAudio = html.AudioElement()
    //   ..src = nextSrc
    //   ..autoplay = true
    //   ..onEnded.listen((_) {
    //     _playNext(); // 다음 오디오로 넘어감
    //   })
    //   ..onError.listen((e) {
    //     if (kDebugMode) print('오디오 에러 발생, 다음으로 넘어감.');
    //     _playNext();
    //   });
    //
    // // html.document.body?.append(currentAudio!); // 필요시
    // isPlaying = true;
  }

  void _stopCurrentAudio() {
    if (currentAudio != null) {
      currentAudio!.pause(); // 재생 중단
      currentAudio!.currentTime = 0; // 처음으로 이동
      // currentAudio!.remove(); // DOM에서 제거 (선택 사항)
      // currentAudio = null;
      // isPlaying = false;
      // if (kDebugMode) print('현재 오디오 정지됨');
      // Remove event listeners when stopping/replacing the audio element
      if (_onEndedListener != null) {
        currentAudio!.removeEventListener('ended', _onEndedListener);
        _onEndedListener = null;
      }
      if (_onErrorListener != null) {
        currentAudio!.removeEventListener('error', _onErrorListener);
        _onErrorListener = null;
      }

      // currentAudio!.remove(); // Only if you appended it to the DOM
      currentAudio = null;
      isPlaying = false;
      if (kDebugMode) print('현재 오디오 정지됨');
    }
  }

  // Add a dispose method to clean up when the player is no longer needed
  void dispose() {
    _stopCurrentAudio();
    audioQueue.clear();
  }
}
