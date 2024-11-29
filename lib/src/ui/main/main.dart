
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:raspidrum_ui/src/app.dart';
import 'package:raspidrum_ui/src/custom_icons.dart';

import 'main_viewmodel.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
    required this.viewModel,
  });

  final MainViewModel viewModel;

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  double _groupAlignment = -1.0; //align to top

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            groupAlignment: _groupAlignment,
            onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
            },
            labelType: NavigationRailLabelType.none,
            destinations: <NavigationRailDestination>[
              NavigationRailDestination(
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
}