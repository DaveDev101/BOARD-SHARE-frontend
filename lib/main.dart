import 'package:boardshare/packages/core/portal_controller.dart';
import 'package:boardshare/routes.dart';
import 'package:boardshare/packages/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  // delete '#' in the url
  usePathUrlStrategy();
  // ProviderScope for flutter riverpod
  runApp(
    ProviderScope(
      child: const BoardShareApp(),
    ),
  );
}

class BoardShareApp extends ConsumerWidget {
  const BoardShareApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Portal(
      child: MaterialApp.router(
        title: 'BOARD-SHARE',
        themeMode: ThemeMode.system,
        theme: kThemeBright,
        // darkTheme: kThemeDark,
        builder: (context, child) {
          return _Unfocus(
            child: child!,
          );
        },
        routerConfig: createRouter(ref),
      ),
    );
  }
}

/// A widget that unfocus everything when tapped.
///
/// This implements the "Unfocus when tapping in empty space" behavior for the
/// entire application.
class _Unfocus extends HookConsumerWidget {
  const _Unfocus({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        ref.read(portalControllerProvider.notifier).makeAllInvisible();
      },
      child: child,
    );
  }
}
