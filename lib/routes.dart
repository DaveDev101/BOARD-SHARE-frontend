import 'package:boardshare/app/content/screens/board_detail_screen.dart';
import 'package:boardshare/app/content/screens/board_list_screen.dart';
import 'package:boardshare/app/content/screens/content_layout.dart';
import 'package:boardshare/app/content/screens/symbol_detail_screen.dart';
import 'package:boardshare/app/content/screens/symbol_list_screen.dart';
import 'package:boardshare/app/user/controllers/signin_controller.dart';
import 'package:boardshare/app/user/screens/change_password.dart';
import 'package:boardshare/app/user/screens/download_history.dart';
import 'package:boardshare/app/user/screens/favorite_boards_screen.dart';
import 'package:boardshare/app/user/screens/favorite_symbols_screen.dart';
import 'package:boardshare/app/user/screens/group_members.dart';
import 'package:boardshare/app/user/screens/group_mgt.dart';
import 'package:boardshare/app/user/screens/my_boards_screen.dart';
import 'package:boardshare/app/user/screens/user_layout.dart';
import 'package:boardshare/app/user/screens/user_profile_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app/content/screens/board_editor_screen.dart';
import 'app/home/home.dart';
import 'app/user/models/signin_result.dart';
import 'app/user/screens/signin.dart';
import 'app/user/screens/signup.dart';

// final GoRouter router = GoRouter(
//   initialLocation: '/',
//   debugLogDiagnostics: kDebugMode,
//   // refreshListenable: signinControllerProvider.notifier as Listenable,
//   redirect: (context, state) async {
//     if (kDebugMode) {
//       print(
//           '🚏🚏🚏🥤🥤redirect.state.matchedLocation: ${state.matchedLocation}, fullPath: ${state.fullPath}');
//     }
//
//     return null;
//   },
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => HomeScreen(),
//     ),
//     GoRoute(
//       path: '/sign-up',
//       builder: (context, state) => Signup(),
//     ),
//     GoRoute(
//       path: '/sign-in',
//       builder: (context, state) => Signin(),
//     ),
//     ShellRoute(
//       builder: (context, state, child) {
//         return HomeLayout(child: child);
//       },
//       routes: <RouteBase>[
//         GoRoute(
//           path: '/in-shell',
//           builder: (context, state) => MyHomePage(title: 'BOARD-SHARE'),
//         ),
//       ],
//     ),
//     ShellRoute(
//       builder: (context, state, child) {
//         return ContentLayout(child: child);
//       },
//       routes: <RouteBase>[
//         GoRoute(
//           path: '/content/symbols',
//           builder: (context, state) => ProviderScope(
//             overrides: [
//               symbolListInitialCondition.overrideWithValue((1, 'all'))
//             ],
//             child: SymbolsScreen(),
//           ),
//           routes: [
//             GoRoute(
//               path: '/:id',
//               builder: (context, state) {
//                 final idStr = state.pathParameters['id'];
//                 final id = (idStr != null && idStr.isNotEmpty)
//                     ? int.parse(idStr)
//                     : null;
//                 final symbolData = state.extra as AACSymbol?;
//                 return ProviderScope(
//                     overrides: [selectedSymbolId.overrideWithValue(id ?? 0)],
//                     child: SymbolDetailScreen());
//               },
//             ),
//           ],
//         ),
//         GoRoute(
//           path: '/content/board',
//           builder: (context, state) => Container(color: Colors.orangeAccent),
//         ),
//       ],
//     )
//   ],
//   errorBuilder: (context, state) => Scaffold(
//     body: Center(
//       child: Text(state.error.toString()),
//     ),
//   ),
// );

GoRouter createRouter(WidgetRef ref) {
  final routerRefreshNotifier = RouterRefreshNotifier(ref);

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: kDebugMode,
    // refreshListenable: RouterRefreshNotifier(ref),
    refreshListenable: routerRefreshNotifier,
    redirect: (context, state) async {
      final asyncState = routerRefreshNotifier.currentState;
      // when loading or state is yet set
      if (asyncState == null || asyncState is AsyncLoading) return null;

      // when error
      if (asyncState is AsyncError) return null;

      // when AsyncData
      if (asyncState is AsyncData<(String, SigninResult)>) {
        final authState = asyncState.value;
        final isAuthenticated =
            authState.$1.isEmpty && authState.$2.user.user != null;
        final loggingIn = state.matchedLocation == '/sign-in';
        // final signingUp = state.matchedLocation == '/sign-up';

        // when NOT signed in or UNAUTHENTICATED --> goes to HOME('/')
        // if (!isAuthenticated && !loggingIn && !signingUp) return '/';
        // when having signed in successfully but remaining in sign in screen
        if (isAuthenticated && loggingIn) return '/';
      }

      if (kDebugMode) {
        print(
          '🚏🚏🚏🥤🥤redirect.state.matchedLocation: ${state.matchedLocation}, fullPath: ${state.fullPath}',
        );
      }

      return null;
    },
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomeScreen()),
      GoRoute(path: '/sign-up', builder: (context, state) => Signup()),
      GoRoute(path: '/sign-in', builder: (context, state) => Signin()),
      GoRoute(
        path: '/change-password',
        builder: (context, state) => ChangePasswordScreen(),
      ),
      // ShellRoute(
      //   builder: (context, state, child) {
      //     return HomeLayout(child: child);
      //   },
      //   routes: <RouteBase>[
      //     GoRoute(
      //       path: '/in-shell',
      //       builder: (context, state) => MyHomePage(title: 'BOARD-SHARE'),
      //     ),
      //   ],
      // ),
      ShellRoute(
        builder: (context, state, child) {
          return ContentLayout(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/content/symbols',
            builder: (context, state) => ProviderScope(
              overrides: [
                symbolListInitialCondition.overrideWithValue((1, 'all')),
              ],
              child: SymbolListScreen(),
            ),
            routes: [
              GoRoute(
                path: '/:id',
                builder: (context, state) {
                  final idStr = state.pathParameters['id'];
                  final id = (idStr != null && idStr.isNotEmpty)
                      ? int.parse(idStr)
                      : null;
                  return ProviderScope(
                    overrides: [selectedSymbolId.overrideWithValue(id ?? 0)],
                    child: SymbolDetailScreen(),
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: '/content/boards',
            builder: (context, state) => ProviderScope(
              overrides: [
                boardListInitialCondition.overrideWithValue((1, 'all')),
              ],
              child: BoardListScreen(),
            ),
            routes: [
              GoRoute(
                path: '/:id',
                builder: (context, state) {
                  final idStr = state.pathParameters['id'];
                  final id = (idStr != null && idStr.isNotEmpty)
                      ? int.parse(idStr)
                      : null;
                  return ProviderScope(
                    overrides: [selectedBoardId.overrideWithValue(id ?? 0)],
                    child: BoardDetailScreen(),
                  );
                },
                // routes: [
                //   GoRoute(
                //     path: '/editor',
                //     builder: (context, state) => BoardEditor(),
                //   ),
                // ],
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/board-editor/:id',
        builder: (context, state) {
          final idStr = state.pathParameters['id'];
          final id = (idStr != null && idStr.isNotEmpty)
              ? int.parse(idStr)
              : null;
          return ProviderScope(
            overrides: [boardIdBeingEdited.overrideWithValue(id ?? 0)],
            child: BoardEditorScreen(),
          );
        },
      ),
      ShellRoute(
        builder: (context, state, child) {
          return UserLayout(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/user/download-history',
            builder: (context, state) => DownloadHistoryPage(),
            // routes: [
            //   GoRoute(
            //     path: '/:id',
            //     builder: (context, state) {
            //       final idStr = state.pathParameters['id'];
            //       final id = (idStr != null && idStr.isNotEmpty)
            //           ? int.parse(idStr)
            //           : null;
            //       return ProviderScope(
            //           overrides: [selectedSymbolId.overrideWithValue(id ?? 0)],
            //           child: SymbolDetailScreen());
            //     },
            //   ),
            // ],
          ),
          GoRoute(
            path: '/user/my-boards',
            builder: (context, state) {
              return ProviderScope(
                overrides: [
                  myBoardsInitialCondition.overrideWithValue((1, 'all')),
                ],
                child: MyBoardsScreen(),
              );
            },
          ),
          GoRoute(
            path: '/user/favorite-symbols',
            builder: (context, state) {
              return ProviderScope(
                overrides: [
                  favoriteSymbolsInitialCondition.overrideWithValue((1, 'all')),
                ],
                child: FavoriteSymbolsScreen(),
              );
            },
          ),
          GoRoute(
            path: '/user/favorite-boards',
            builder: (context, state) {
              return ProviderScope(
                overrides: [
                  favoriteBoardsInitialCondition.overrideWithValue((1, 'all')),
                ],
                child: FavoriteBoardsScreen(),
              );
            },
          ),
          GoRoute(
            path: '/user/user-profile',
            builder: (context, state) => UserProfileScreen(),
          ),
          GoRoute(
            path: '/user/group-mgt',
            builder: (context, state) => GroupManagementScreen(),
          ),
          GoRoute(
            path: '/user/group-members',
            builder: (context, state) => GroupMembersScreen(),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text(state.error.toString()))),
  );
}

// ChangeNotifier wrapper for Riverpod signinControllerProvider
class RouterRefreshNotifier extends ChangeNotifier {
  AsyncValue<(String, SigninResult)>? currentState;

  RouterRefreshNotifier(WidgetRef ref) {
    ref.listen<AsyncValue<(String, SigninResult)>>(signinControllerProvider, (
      previous,
      next,
    ) {
      currentState = next;
      notifyListeners();
    });
  }
}
