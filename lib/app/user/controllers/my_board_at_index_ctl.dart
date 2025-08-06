import 'package:boardshare/app/user/controllers/my_boards_ctl.dart';
import 'package:boardshare/app/user/models/my_board.dart';
import 'package:boardshare/packages/core/consts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_board_at_index_ctl.g.dart';

@riverpod
Future<AsyncValue<MyBoard>> myBoardAtIndex(
  Ref ref,
  int index, {
  required String searchTerm,
}) async {
  final p = (index ~/ kQueryLimit) + 1;
  final at = index % kQueryLimit;
  final aacBoards = ref.watch(myBoardsProvider(searchTerm, page: p));
  return aacBoards.whenData((value) => value.$3[at]);
}
