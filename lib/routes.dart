import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/screens/home.dart';
import 'package:navigation/screens/nested.dart';
import 'package:navigation/screens/settings.dart';

import 'main.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final _settingsNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/home',
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
     // navigatorKey: _shellNavigatorKey,
    builder: (context, state, navigationShell) {
        final location = GoRouterState.of(context).matchedLocation;

        return ScaffoldWithNavBar(
          location: navigationShell,
         // child: "child",
        );
      },
      branches: [
      StatefulShellBranch(
      navigatorKey: _shellNavigatorKey,
      routes: [
        GoRoute(
          path: '/home',
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => HomeScreen(),
          routes: [
            GoRoute(
              path: 'nestedScreen',
              parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => NestedScreen(),
            ),
          ]
),
]),
    StatefulShellBranch(
    navigatorKey: _settingsNavigatorKey,
      routes: [
          GoRoute(
          path: '/settings',
          builder: (context, state) => SettingsScreen(),
          ),
      ]),

      ],
    ),
  ],
);