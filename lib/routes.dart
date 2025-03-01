import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app/home/home.dart';
import 'app/user/screens/signin.dart';
import 'app/user/screens/signup.dart';
import 'app/content/screens/home_layout.dart';
import 'main.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: kDebugMode,
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
    )
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(state.error.toString()),
    ),
  ),
);
