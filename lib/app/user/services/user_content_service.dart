import 'dart:convert';

import 'package:boardshare/app/content/models/aac_post.dart';
import 'package:boardshare/app/user/models/my_board.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../packages/network/query_json_response.dart';
import '../../content/models/aac_symbol.dart';

final userContentServicesProvider = Provider(UserContentService.new);

class UserContentService {
  UserContentService(this.ref);

  final Ref ref;

  Future<List<MyBoard>> listMyBoard({
    required int userID,
    required int orgID,
    required String searchTerm,
  }) async {
    final jsonString = await rootBundle.loadString(
      'assets/mockdata/mock_my_board.json',
    );
    final jsonMap = jsonDecode(jsonString);

    List<MyBoard> result = [];
    for (var board in jsonMap['data']) {
      result.add(MyBoard.fromJson(board));
    }

    return result;
    // var rp = {"email": email, "password": password};

    // if (kDebugMode) print(rp);

    // try {
    //   // var jsonResponse = await sendData(
    //   var jsonResponse = await ref
    //       .read(dioProvider)
    //       .sendData(
    //         '/user/sign-in',
    //         method: 'POST',
    //         fromJsonT: SigninResult.fromJson,
    //         requestData: rp,
    //       );
    //
    //   return ('', jsonResponse.data);
    // } on ApiException catch (ae) {
    //   if (kDebugMode) print('catch ApiException: $ae');
    //   if (ae.statusCode == HttpStatus.badRequest &&
    //       ae.message.contains('invalid credentials')) {
    //     return (
    //       'invalid credentials',
    //       SigninResult(
    //         tokens: Tokens(accessToken: '', refreshToken: ''),
    //         user: UserOrg(),
    //       ),
    //     );
    //   } else {
    //     rethrow;
    //   }
    // } catch (e) {
    //   if (kDebugMode) print('catch error: $e');
    //   rethrow;
    // }
  }

  Future<List<AACSymbol>> listFavoriteSymbols({
    required String searchTerm,
    List<String>? taxonomyTerms,
    DCount? cnt,
    List<DOrder>? orders,
  }) async {
    final jsonString = await rootBundle.loadString(
      'assets/mockdata/mock_favorite_symbols.json',
    );
    final jsonMap = jsonDecode(jsonString);

    List<AACSymbol> result = [];
    for (var board in jsonMap['data']) {
      result.add(AACSymbol.fromJson(board));
    }

    return result;
    // var rp = {"search": searchTerm};
    // if (taxonomyTerms != null && taxonomyTerms.isNotEmpty) {
    //   rp = {
    //     ...rp,
    //     ...{"taxonomy_terms": taxonomyTerms.join(',')}
    //   };
    // }
    // if (cnt != null) {
    //   rp = {
    //     ...rp,
    //     ...{"limit": cnt.limitCount.toString(), "offset": cnt.offset.toString()}
    //   };
    // }
    // if (orders != null && orders.isNotEmpty) {
    //   for (var e in orders) {
    //     rp = {
    //       ...rp,
    //       ...{"order_by": e.orderBy!, "order_dir": e.orderDir!}
    //     };
    //   }
    // }
    //
    // if (kDebugMode) print(rp);
    //
    // try {
    //   final res = await ref.read(dioProvider).fetchList<AACSymbol>(
    //     '/content/symbols',
    //     requestData: rp,
    //     fromJsonT: AACSymbol.fromJson,
    //   );
    //
    //   if (kDebugMode) {
    //     print('-==> searchSymbol().res.runtimeType: ${res.runtimeType}');
    //   }
    //
    //   return res;
    // } on ApiException catch (ae) {
    //   if (kDebugMode) print('searchSymbols ApiException: $ae');
    //   rethrow;
    // } catch (e) {
    //   if (kDebugMode) print('searchSymbols error: $e');
    //   rethrow;
    // }
  }

  Future<List<AACPost>> listFavoriteBoards({
    required String searchTerm,
    List<String>? taxonomyTerms,
    DCount? cnt,
    List<DOrder>? orders,
  }) async {
    final jsonString = await rootBundle.loadString(
      'assets/mockdata/mock_favorite_boards.json',
    );
    final jsonMap = jsonDecode(jsonString);

    List<AACPost> result = [];
    for (var board in jsonMap['data']) {
      result.add(AACPost.fromJson(board));
    }

    return result;
  }
}
