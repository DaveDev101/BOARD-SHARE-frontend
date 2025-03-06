import 'package:boardshare/app/content/models/aac_symbol.dart';
import 'package:boardshare/packages/network/query_json_response.dart';

abstract class AACSymbolManager {
  Future<QueryJsonResponseL<AACSymbol>> searchSymbols(
      {required String searchTerm,
      List<String>? taxonomyTerms,
      DCount? cnt,
      List<DOrder>? orders});
  Future<QueryJsonResponseS<AACSymbol>> getSymbol({required int symbolId});
}
