import 'package:flutter/material.dart';
import 'package:raspidrum_ui/src/ui/metronome/metr_viewmodel.dart';

class MetronomeScreen extends StatelessWidget {
  const MetronomeScreen({
    super.key,
    required this.viewModel,
  });

  final MetronomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('METRONOME')
          ],
        ),
      )
    );
  }
}