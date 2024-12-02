
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:raspidrum_ui/src/custom_icons.dart';
import 'package:raspidrum_ui/src/routing/routes.dart';

class NaviBar extends StatelessWidget {
  const NaviBar({
    required this.child,
    super.key
  });

  final Widget child;

  final double _groupAlignment = -1.0; //align to top

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _getSelectedIndex(context),
            groupAlignment: _groupAlignment,
            onDestinationSelected: (int index) => _onItemTapped(index, context),
            labelType: NavigationRailLabelType.none,
            destinations: <NavigationRailDestination>[
              const NavigationRailDestination(
                icon: CustomIcons.metronome, 
                label: const Text('KIT')
              ),
              const NavigationRailDestination(
                icon: CustomIcons.mixer, 
                label: Text('MIXER')
              ),
              const NavigationRailDestination(
                icon: CustomIcons.metronome, 
                label: Text('METRONOME')
              ),
              const NavigationRailDestination(
                icon: CustomIcons.player, 
                label: Text('PLAYER')
              ),
              const NavigationRailDestination(
                icon: CustomIcons.settings, 
                label: Text('SETTINGS')
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