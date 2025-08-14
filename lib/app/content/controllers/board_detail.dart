import 'dart:convert';

import 'package:boardshare/app/content/models/aac_post.dart';
import 'package:boardshare/mock_data/mock_response_aacboards.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../app_env.dart';
import '../services/post_services.dart';

part 'board_detail.g.dart';

@riverpod
Future<(String, AACPost?)> boardDetail(Ref ref, int id) async {
  if (kAppEnv == AppEnvItems.mockup) {
    await Future.delayed(const Duration(seconds: 1));

    final boardsData = jsonDecode(mockAacBoards);
    final board = boardsData['data'].where((e) => e['id'] == id).toList()[0];

    return ('SUCCESS', AACPost.fromJson(board));
  }

  final res = await ref.watch(postServicesProvider).getBoard(boardId: id);

  if (kDebugMode) {
    print('');
    print('board detail res: ${res.ok}');
    print('board detail res: ${res.cnt}');
    print('board detail res: ${res.data}');
    print('');
  }

  if (res.ok) {
    if (res.data.id == null || res.data.id == 0) {
      return ('NO SUCH DATA', null);
    } else {
      return ('SUCCESS', res.data);
    }
  } else {
    return ('ERROR: ${res.err}', res.data);
  }
}
