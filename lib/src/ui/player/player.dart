import 'package:flutter/material.dart';
import 'package:raspidrum_ui/src/ui/player/player_viewmodel.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({
    super.key,
    required this.viewModel,
  });

  final PlayerViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('PLAYER')
          ],
        ),
      )
    );
  }
}