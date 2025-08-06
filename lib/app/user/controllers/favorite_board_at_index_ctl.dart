import 'package:boardshare/app/content/models/aac_post.dart';
import 'package:boardshare/app/user/controllers/favorite_boards_ctl.dart';
import 'package:boardshare/packages/core/consts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_board_at_index_ctl.g.dart';

@riverpod
Future<AsyncValue<AACPost>> favoriteBoardAtIndexCtl(
  Ref ref,
  int index, {
  required String searchTerm,
}) async {
  final p = (index ~/ kQueryLimit) + 1;
  final at = index % kQueryLimit;
  final aacBoards = ref.watch(favoriteBoardsCtlProvider(searchTerm, page: p));
  return aacBoards.whenData((value) => value.$3[at]);
}
