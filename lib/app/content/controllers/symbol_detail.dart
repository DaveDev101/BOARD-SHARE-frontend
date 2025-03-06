import 'package:boardshare/app/content/services/post_services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/aac_symbol.dart';

part 'symbol_detail.g.dart';

@riverpod
Future<(String, AACSymbol?)> symbolDetail(Ref ref, int id) async {
  final res = await ref.watch(postServicesProvider).getSymbol(symbolId: id);

  if (kDebugMode) {
    print('');
    print('symbolDetail res: ${res.ok}');
    print('symbolDetail res: ${res.cnt}');
    print('symbolDetail res: ${res.data}');
    print('');
  }

  if (res.ok) {
    if (res.data.id == null || res.data.id == 0) {
      return ('NO SUCH DATA', null);
    } else {
      return ('SUCCESS', res.data);
    }
  } else {
    return ('ERROR: ${res.err}', res.data);
  }
}
