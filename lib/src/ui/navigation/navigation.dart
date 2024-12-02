
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raspidrum_ui/src/custom_icons.dart';
import 'package:raspidrum_ui/src/routing/routes.dart';

class NaviBar extends StatelessWidget {
  const NaviBar({
    required this.child,
    super.key
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _getSelectedIndex(context),
            groupAlignment: -1,
            onDestinationSelected: (int index) => _onItemTapped(index, context),
            labelType: NavigationRailLabelType.all,
            useIndicator: false,
            indicatorColor: Colors.transparent,
            selectedIconTheme: IconThemeData(
              size: 64
            ),
            unselectedIconTheme: IconThemeData(
              size: 64
            ),
            destinations: <NavigationRailDestination>[
              const NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                icon: CustomIcons.kit,
                label: Text(' ')
              ),
              const NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                icon: CustomIcons.mixer, 
                label: Text(' ')
              ),
              const NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                icon: CustomIcons.metronome, 
                label: Text(' ')
              ),
              const NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                icon: CustomIcons.player, 
                label: Text(' ')
              ),
              const NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                icon: CustomIcons.settings, 
                label: Text(' ')
              ),
            ]
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: child
          )
        ]
      )
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(Routes.kit);
      case 1:
        GoRouter.of(context).go(Routes.mixer);
      case 2:
        GoRouter.of(context).go(Routes.metronome);
      case 3:
        GoRouter.of(context).go(Routes.player);
      case 4:
        GoRouter.of(context).go(Routes.settings);
    }
  }

  static int _getSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith(Routes.kit)) {
      return 0;
    }
    if (location.startsWith(Routes.mixer)) {
      return 1;
    }
    if (location.startsWith(Routes.metronome)) {
      return 2;
    }
    if (location.startsWith(Routes.player)) {
      return 3;
    }
    if (location.startsWith(Routes.settings)) {
      return 4;
    }

    return 0;
  }

}