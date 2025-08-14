import 'package:boardshare/app/user/controllers/favorite_symbol_at_index_ctl.dart';
import 'package:boardshare/app_env.dart';
import 'package:boardshare/packages/ui_components/loading_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final favoriteSymbolAtIndex = Provider<(int, String)>(
  (ref) => throw UnimplementedError(),
);

class FavoriteSymbolCard extends HookConsumerWidget {
  const FavoriteSymbolCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (index, search) = ref.watch(favoriteSymbolAtIndex);
    // final page = (index ~/ kQueryLimit) + 1;

    final favoriteSymbolAtIndexCtl = ref.watch(
      favoriteSymbolAtIndexCtlProvider(index, searchTerm: search),
    );

    final isHovered = useState(false);

    return Card(
      // color: Colors.grey[100],
      color: Colors.white,
      // elevation: 1.0,
      shape: isHovered.value
          ? RoundedRectangleBorder(
              side: BorderSide(color: Colors.black87, width: 4),
              borderRadius: BorderRadius.zero,
            )
          : RoundedRectangleBorder(
              // side: BorderSide(color: Colors.grey, width: 0.4),
              borderRadius: BorderRadius.zero,
            ),
      child: favoriteSymbolAtIndexCtl.when(
        data: (data) {
          final s = data.value;
          if (s == null) {
            return Container();
          } else {
            return LayoutBuilder(
              builder: (context, constraints) {
                return InkWell(
                  onTap: () {
                    if (kDebugMode) {
                      print('Symbol [${s.symbolTitle}] is tapped!');
                    }
                    // context.go('/content/symbols/${s.id ?? 0}');
                  },
                  onHover: (hovering) => isHovered.value = hovering,
                  child: Stack(
                    children: [
                      if (s.medium != null && s.medium!.mediumUrl != null)
                        SizedBox(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight,
                          child: Center(
                            child: (kAppEnv == AppEnvItems.mockup)
                                ? Image.asset(
                                    s.medium!.mediumUrl!,
                                    width: constraints.maxWidth * 0.7,
                                    height: constraints.maxWidth * 0.7,
                                  )
                                : LoadingImage(
                                    url: s.medium!.mediumUrl!,
                                    width: constraints.maxWidth * 0.7,
                                    height: constraints.maxWidth * 0.7,
                                  ),
                          ),
                        ),
                      Positioned(
                        top: 12.0,
                        width: constraints.maxWidth,
                        child: Text(
                          s.symbolTitle ?? '',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Positioned(
                        top: 4.0,
                        right: 4.0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz_outlined),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
        error: (err, stack) {
          if (kDebugMode) {
            print('AAC Symbol at Index err: $err');
          }
          return Text('ERR!');
        },
        loading: () {
          return null;
        },
      ),
    );
  }
}
