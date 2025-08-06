import 'package:boardshare/app/user/models/my_board.dart';
import 'package:boardshare/app/user/services/user_content_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_boards_ctl.g.dart';

@riverpod
Future<(String, int, List<MyBoard>)> myBoards(
  Ref ref,
  String searchTerm, {
  required int page,
  List<String>? taxonomyTerms,
  List<(String, String)>? orders,
}) async {
  // final search = searchTerm.isEmpty ? 'all' : searchTerm;
  // final cnt = DCount(limitCount: kQueryLimit, offset: (page - 1) * kQueryLimit);
  // final os =
  //     (orders != null)
  //         ? orders.map((e) => DOrder(orderBy: e.$1, orderDir: e.$2)).toList()
  //         : null;

  // return ('NO SUCH DATA', 0, <ESBoard>[]);

  final data = await ref
      .read(userContentServicesProvider)
      .listMyBoard(userID: 109, orgID: 2, searchTerm: 'all');
  return ('SUCCESS', data.length, data);

  // final res = await ref.read(postServicesProvider).searchBoards(
  //       searchTerm: search,
  //       taxonomyTerms: taxonomyTerms,
  //       cnt: cnt,
  //       orders: os,
  //     );
  //
  // if (res.ok) {
  //   if (res.cnt == null ||
  //       res.cnt?.totalCount == null ||
  //       res.cnt?.totalCount == 0) {
  //     return ('NO SUCH DATA', 0, <ESBoard>[]);
  //   } else if (res.data.isEmpty) {
  //     return ('NO MORE DATA', res.cnt!.totalCount!, res.data);
  //   } else {
  //     return ('SUCCESS', res.cnt!.totalCount!, res.data);
  //   }
  // } else {
  //   return ('ERROR: ${res.err}', 0, <ESBoard>[]);
  // }
}
