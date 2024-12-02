import 'package:flutter/material.dart';
import 'package:raspidrum_ui/src/ui/settings/settings_viewmodel.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
    required this.viewModel,
  });

  final SettingsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('SETTINGS')
          ],
        ),
      )
    );
  }
}