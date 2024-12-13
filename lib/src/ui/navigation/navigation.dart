
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raspidrum_ui/src/custom_icons.dart';
import 'package:raspidrum_ui/src/routing/routes.dart';

class NaviBar extends StatelessWidget {
  const NaviBar({
    required this.child,
    super.key
  });

  static const double navEdgeInset = 4.0;
  static const double iconSize = 40;

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
              size: iconSize
            ),
            unselectedIconTheme: IconThemeData(
              size: iconSize
            ),
            destinations: <NavigationRailDestination>[
              NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: navEdgeInset),
                icon: SizedBox(
                    width: iconSize,
                    height: iconSize,
                    child: CustomIcons.kit,
                ),
                label: Text(' ')
              ),
              NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: navEdgeInset),
                icon: SizedBox(
                  width: iconSize,
                  height: iconSize,
                  child: CustomIcons.mixer
                ), 
                label: Text(' ')
              ),
              NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: navEdgeInset),
                icon: SizedBox(
                  width: iconSize,
                  height: iconSize,
                  child: CustomIcons.metronome
                ), 
                label: Text(' ')
              ),
              NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: navEdgeInset),
                icon: SizedBox(
                  width: iconSize,
                  height: iconSize,
                  child: CustomIcons.player
                ), 
                label: Text(' ')
              ),
              NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: navEdgeInset),
                icon: SizedBox(
                  width: iconSize,
                  height: iconSize,
                  child: CustomIcons.settings
                ), 
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
        context.goNamed(Routes.kit);
      case 1:
        context.goNamed(Routes.mixer);
      case 2:
        context.goNamed(Routes.metronome);
      case 3:
        context.goNamed(Routes.player);
      case 4:
        context.goNamed(Routes.settings);
    }
  }

  static int _getSelectedIndex(BuildContext context) {
    final String? name = GoRouterState.of(context).name;
    if (name == null) { 
      return 0;
    }
    switch (name) {
      case Routes.kit: return 0;
      case Routes.mixer: return 1;
      case Routes.metronome: return 2;
      case Routes.player: return 3;
      case Routes.settings: return 4;
      default: return 0;
    }
  }

}