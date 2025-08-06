import 'package:boardshare/app/content/models/aac_symbol.dart';
import 'package:boardshare/app/user/controllers/favorite_symbols_ctl.dart';
import 'package:boardshare/packages/core/consts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_symbol_at_index_ctl.g.dart';

@riverpod
Future<AsyncValue<AACSymbol>> favoriteSymbolAtIndexCtl(
  Ref ref,
  int index, {
  required String searchTerm,
}) async {
  final p = (index ~/ kQueryLimit) + 1;
  final at = index % kQueryLimit;
  final favoriteSymbols = ref.watch(
    favoriteSymbolsCtlProvider(searchTerm, page: p),
  );
  return favoriteSymbols.whenData((value) => value.$3[at]);
}

// class AacSymbolAtIndex extends _$AacSymbolAtIndex {
//   @override
//   Future<AsyncValue<AACSymbol>> build(
//     int index, {
//     required String searchTerm,
//   }) async {
//     final p = (index ~/ kQueryLimit) + 1;
//     final at = index % kQueryLimit;
//     final aacSymbols = ref.watch(symbolListProvider(searchTerm, page: p));
//     return aacSymbols.whenData((value) => value.$3[at]);
//   }
// }
