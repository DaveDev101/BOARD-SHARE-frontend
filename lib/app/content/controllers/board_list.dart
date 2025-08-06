import 'dart:convert';

import 'package:boardshare/app/content/models/es_board.dart';
import 'package:boardshare/app_env.dart';
import 'package:boardshare/mock_data/mock_response_boards.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../packages/core/consts.dart';
import '../../../packages/network/query_json_response.dart';
import '../services/post_services.dart';

part 'board_list.g.dart';

@riverpod
Future<(String, int, List<ESBoard>)> boardList(
  Ref ref,
  String searchTerm, {
  required int page,
  List<String>? taxonomyTerms,
  List<(String, String)>? orders,
}) async {
  final search = searchTerm.isEmpty ? 'all' : searchTerm;
  final cnt = DCount(limitCount: kQueryLimit, offset: (page - 1) * kQueryLimit);
  final os = (orders != null)
      ? orders.map((e) => DOrder(orderBy: e.$1, orderDir: e.$2)).toList()
      : null;

  if (kAppEnv == EnumAppEnv.mockup) {
    await Future.delayed(const Duration(seconds: 1));

    final boardsData = jsonDecode(mockResponseBoards);
    List<ESBoard> boards = [];

    for (var element in boardsData['data']) {
      if (element is Map<String, dynamic>) {
        boards.add(ESBoard.fromJson(element));
      }
    }

    return ('SUCCESS', 10, boards);
  }

  final res = await ref
      .read(postServicesProvider)
      .searchBoards(
        searchTerm: search,
        taxonomyTerms: taxonomyTerms,
        cnt: cnt,
        orders: os,
      );

  if (res.ok) {
    if (res.cnt == null ||
        res.cnt?.totalCount == null ||
        res.cnt?.totalCount == 0) {
      return ('NO SUCH DATA', 0, <ESBoard>[]);
    } else if (res.data.isEmpty) {
      return ('NO MORE DATA', res.cnt!.totalCount!, res.data);
    } else {
      return ('SUCCESS', res.cnt!.totalCount!, res.data);
    }
  } else {
    return ('ERROR: ${res.err}', 0, <ESBoard>[]);
  }
}
