import 'dart:convert';

import 'package:boardshare/app/content/services/post_services.dart';
import 'package:boardshare/app_env.dart';
import 'package:boardshare/mock_data/mock_response_symbols.dart';
import 'package:boardshare/packages/core/consts.dart';
import 'package:boardshare/packages/network/query_json_response.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:boardshare/app/content/models/aac_symbol.dart';

part 'symbol_list.g.dart';

@riverpod
Future<(String, int, List<AACSymbol>)> symbolList(
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
    try {
      await Future.delayed(const Duration(seconds: 1));

      final symbols = jsonDecode(mockResponseHanspeakSymbols);
      // final symbols = mockResponseHanspeakSymbols;

      if (kDebugMode) {
        print('');
        print('');
        print(symbols.runtimeType);
        print(symbols);
        print('');
        print('');
        print(symbols['cnt'].runtimeType);
        print(symbols['cnt']);
        print('');
        print('');
        print(symbols['data'].runtimeType);
        print(symbols['data']);
        print('');
      }

      List<AACSymbol> symbolsList = [];
      for (var element in symbols['data']) {
        if (kDebugMode) print(element);
        if (kDebugMode) print(element.runtimeType);

        if (element is Map<String, dynamic>) {
          if (kDebugMode) {
            print('element is Map<String, dynamic>');
            print('id: ${element['id']}, ${element['id'].runtimeType}');
            print(
              'symbol_title: ${element['symbol_title']}, ${element['symbol_title'].runtimeType}',
            );
            print(
              'symbol_excerpt: ${element['symbol_excerpt']}, ${element['symbol_excerpt'].runtimeType}',
            );
            print(
              'symbol_status: ${element['symbol_status']}, ${element['symbol_status'].runtimeType}',
            );
            print(
              'is_comment_open: ${element['is_comment_open']}, ${element['is_comment_open'].runtimeType}',
            );
            print(
              'medium: ${element['medium']}, ${element['medium'].runtimeType}',
            );
            print(
              'like_count: ${element['like_count']}, ${element['like_count'].runtimeType}',
            );
            print(
              'comment_count: ${element['comment_count']}, ${element['comment_count'].runtimeType}',
            );
            print(
              'symbol_system: ${element['symbol_system']}, ${element['symbol_system'].runtimeType}',
            );
            print(
              'description: ${element['description']}, ${element['description'].runtimeType}',
            );
            print(
              'created_at: ${element['created_at']}, ${element['created_at'].runtimeType}',
            );
            print(
              'updated_at: ${element['updated_at']}, ${element['updated_at'].runtimeType}',
            );
          }

          symbolsList.add(AACSymbol.fromJson(element));
        } else {
          if (kDebugMode) {
            print('Skipping element as it is not a Map: $element');
          }
        }
      }

      return ('SUCCESS', symbols['cnt']['total_count'] as int, symbolsList);
    } catch (e) {
      if (kDebugMode) print(e);
      return ('ERROR: ${e.toString()}', 0, <AACSymbol>[]);
    }
  }

  final res = await ref
      .read(postServicesProvider)
      .searchSymbols(
        searchTerm: search,
        taxonomyTerms: taxonomyTerms,
        cnt: cnt,
        orders: os,
      );

  if (res.ok) {
    if (res.cnt == null ||
        res.cnt?.totalCount == null ||
        res.cnt?.totalCount == 0) {
      return ('NO SUCH DATA', 0, <AACSymbol>[]);
    } else if (res.data.isEmpty) {
      return ('NO MORE DATA', res.cnt!.totalCount!, res.data);
    } else {
      return ('SUCCESS', res.cnt!.totalCount!, res.data);
    }
  } else {
    return ('ERROR: ${res.err}', 0, <AACSymbol>[]);
  }
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
