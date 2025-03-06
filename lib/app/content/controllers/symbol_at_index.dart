import 'package:boardshare/app/content/controllers/symbol_list.dart';
import 'package:boardshare/app/content/models/aac_symbol.dart';
import 'package:boardshare/packages/core/consts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'symbol_at_index.g.dart';

@riverpod
Future<AsyncValue<AACSymbol>> aacSymbolAtIndex(
  Ref ref,
  int index, {
  required String searchTerm,
}) async {
  final p = (index ~/ kQueryLimit) + 1;
  final at = index % kQueryLimit;
  final aacSymbols = ref.watch(symbolListProvider(searchTerm, page: p));
  return aacSymbols.whenData((value) => value.$3[at]);
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
