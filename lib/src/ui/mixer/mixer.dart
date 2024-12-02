import 'package:flutter/material.dart';
import 'package:raspidrum_ui/src/ui/mixer/mixer_viewmodel.dart';

class MixerScreen extends StatelessWidget {
  const MixerScreen({
    super.key,
    required this.viewModel,
  });

  final MixerViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('MIXER')
          ],
        ),
      )
    );
  }
}