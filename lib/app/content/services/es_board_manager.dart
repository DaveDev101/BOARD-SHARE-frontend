import 'package:boardshare/app/content/models/aac_post.dart';
import 'package:boardshare/app/content/models/es_board.dart';
import 'package:boardshare/packages/network/query_json_response.dart';

abstract class ESBoardManager {
  Future<QueryJsonResponseL<ESBoard>> searchBoards(
      {required String searchTerm,
      List<String>? taxonomyTerms,
      DCount? cnt,
      List<DOrder>? orders});

  Future<QueryJsonResponseS<AACPost>> getBoard({required int boardId});
}
