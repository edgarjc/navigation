import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/routes.dart';
import 'package:navigation/screens/home.dart';
import 'package:navigation/screens/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class ScaffoldWithNavBar extends StatefulWidget {
  final Widget? child;
  final StatefulNavigationShell location;
  ScaffoldWithNavBar({this.child, required this.location});

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {

  void _goBranch(int index) {
    widget.location.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.location.currentIndex,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.location,/*IndexedStack(
        index: _currentIndex,
        children: _children,
      ),*/
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}


