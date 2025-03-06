import 'package:boardshare/app/content/models/aac_symbol.dart';
import 'package:boardshare/app/content/screens/content_layout.dart';
import 'package:boardshare/app/content/screens/symbol_detail_screen.dart';
import 'package:boardshare/app/content/screens/symbols_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app/home/home.dart';
import 'app/user/screens/signin.dart';
import 'app/user/screens/signup.dart';
import 'app/content/screens/home_layout.dart';
import 'main.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: kDebugMode,
  redirect: (context, state) async {
    if (kDebugMode) {
      print(
          '🚏🚏🚏🥤🥤redirect.state.matchedLocation: ${state.matchedLocation}, fullPath: ${state.fullPath}');
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/sign-up',
      builder: (context, state) => Signup(),
    ),
    GoRoute(
      path: '/sign-in',
      builder: (context, state) => Signin(),
    ),
    ShellRoute(
      builder: (context, state, child) {
        return HomeLayout(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/in-shell',
          builder: (context, state) => MyHomePage(title: 'BOARD-SHARE'),
        ),
      ],
    ),
    ShellRoute(
      builder: (context, state, child) {
        return ContentLayout(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/content/symbols',
          builder: (context, state) => ProviderScope(
            overrides: [
              symbolListInitialCondition.overrideWithValue((1, 'all'))
            ],
            child: SymbolsScreen(),
          ),
          routes: [
            GoRoute(
              path: '/:id',
              builder: (context, state) {
                final idStr = state.pathParameters['id'];
                final id = (idStr != null && idStr.isNotEmpty)
                    ? int.parse(idStr)
                    : null;
                final symbolData = state.extra as AACSymbol?;
                return ProviderScope(
                    overrides: [selectedSymbolId.overrideWithValue(id ?? 0)],
                    child: SymbolDetailScreen());
              },
            ),
          ],
        ),
        GoRoute(
          path: '/content/board',
          builder: (context, state) => Container(color: Colors.orangeAccent),
        ),
      ],
    )
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(state.error.toString()),
    ),
  ),
);
