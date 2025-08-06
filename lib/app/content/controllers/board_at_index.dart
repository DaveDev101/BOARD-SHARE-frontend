import 'package:boardshare/app/content/controllers/board_list.dart';
import 'package:boardshare/app/content/models/es_board.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../packages/core/consts.dart';

part 'board_at_index.g.dart';

@riverpod
Future<AsyncValue<ESBoard>> boardAtIndex(
  Ref ref,
  int index, {
  required String searchTerm,
}) async {
  final p = (index ~/ kQueryLimit) + 1;
  final at = index % kQueryLimit;
  final aacBoards = ref.watch(boardListProvider(searchTerm, page: p));
  return aacBoards.whenData((value) => value.$3[at]);
}
