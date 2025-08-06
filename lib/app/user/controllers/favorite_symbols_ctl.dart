import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:boardshare/app/content/models/aac_symbol.dart';

import '../services/user_content_service.dart';

part 'favorite_symbols_ctl.g.dart';

@riverpod
Future<(String, int, List<AACSymbol>)> favoriteSymbolsCtl(
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

  final data = await ref
      .read(userContentServicesProvider)
      .listFavoriteSymbols(searchTerm: 'all');
  return ('SUCCESS', data.length, data);

  // final res = await ref.read(postServicesProvider).searchSymbols(
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
  //     return ('NO SUCH DATA', 0, <AACSymbol>[]);
  //   } else if (res.data.isEmpty) {
  //     return ('NO MORE DATA', res.cnt!.totalCount!, res.data);
  //   } else {
  //     return ('SUCCESS', res.cnt!.totalCount!, res.data);
  //   }
  // } else {
  //   return ('ERROR: ${res.err}', 0, <AACSymbol>[]);
  // }
}

// class SymbolList extends _$SymbolList {
//   @override
//   Future<(String, int, List<AACSymbol>)> build(
//     String searchTerm, {
//     required int page,
//     List<String>? taxonomyTerms,
//     List<(String, String)>? orders,
//   }) async {
//     final search = searchTerm.isEmpty ? 'all' : searchTerm;
//     final cnt =
//         DCount(limitCount: kQueryLimit, offset: (page - 1) * kQueryLimit);
//     final os = (orders != null)
//         ? orders.map((e) => DOrder(orderBy: e.$1, orderDir: e.$2)).toList()
//         : null;
//
//     final res = await ref.read(postServicesProvider).searchSymbols(
//           searchTerm: search,
//           taxonomyTerms: taxonomyTerms,
//           cnt: cnt,
//           orders: os,
//         );
//
//     if (res.ok) {
//       if (res.cnt == null ||
//           res.cnt?.totalCount == null ||
//           res.cnt?.totalCount == 0) {
//         return ('NO SUCH DATA', 0, <AACSymbol>[]);
//       } else if (res.data.isEmpty) {
//         return ('NO MORE DATA', res.cnt!.totalCount!, res.data);
//       } else {
//         return ('SUCCESS', res.cnt!.totalCount!, res.data);
//       }
//     } else {
//       return ('ERROR: ${res.err}', 0, <AACSymbol>[]);
//     }
//   }
// }
