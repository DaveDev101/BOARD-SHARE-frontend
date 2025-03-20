import 'package:boardshare/app/content/services/aac_symbol_manager.dart';
import 'package:boardshare/packages/network/query_json_response.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../packages/network/api_exception.dart';
import '../../../packages/network/dio_api_client.dart';
import 'package:boardshare/app/content/models/aac_symbol.dart';

final postServicesProvider = Provider(PostServices.new);

class PostServices implements AACSymbolManager {
  PostServices(this.ref);

  final Ref ref;

  @override
  Future<QueryJsonResponseL<AACSymbol>> searchSymbols({
    required String searchTerm,
    List<String>? taxonomyTerms,
    DCount? cnt,
    List<DOrder>? orders,
  }) async {
    var rp = {"search": searchTerm};
    if (taxonomyTerms != null && taxonomyTerms.isNotEmpty) {
      rp = {
        ...rp,
        ...{"taxonomy_terms": taxonomyTerms.join(',')}
      };
    }
    if (cnt != null) {
      rp = {
        ...rp,
        ...{"limit": cnt.limitCount.toString(), "offset": cnt.offset.toString()}
      };
    }
    if (orders != null && orders.isNotEmpty) {
      for (var e in orders) {
        rp = {
          ...rp,
          ...{"order_by": e.orderBy!, "order_dir": e.orderDir!}
        };
      }
    }

    if (kDebugMode) print(rp);

    try {
      final res = await ref.read(dioProvider).fetchList<AACSymbol>(
            '/content/symbols',
            requestData: rp,
            fromJsonT: AACSymbol.fromJson,
          );

      if (kDebugMode) {
        print('-==> searchSymbol().res.runtimeType: ${res.runtimeType}');
      }

      return res;
    } on ApiException catch (ae) {
      if (kDebugMode) print('searchSymbols ApiException: $ae');
      rethrow;
    } catch (e) {
      if (kDebugMode) print('searchSymbols error: $e');
      rethrow;
    }
  }

  @override
  Future<QueryJsonResponseS<AACSymbol>> getSymbol(
      {required int symbolId}) async {
    final rp = {"id": symbolId};

    try {
      final res = await ref.read(dioProvider).fetchSingle<AACSymbol>(
            '/content/symbols/:id',
            requestData: rp,
            fromJsonT: AACSymbol.fromJson,
          );

      if (kDebugMode) {
        print('-==> getSymbol().res.runtimeType: ${res.runtimeType}');
      }

      return res;
    } on ApiException catch (ae) {
      if (kDebugMode) print('getSymbol ApiException: $ae');
      rethrow;
    } catch (e) {
      if (kDebugMode) print('getSymbol error: $e');
      rethrow;
    }
  }
}
