import 'package:flutter/material.dart';
import 'package:raspidrum_ui/src/ui/kit/kit_viewmodel.dart';

class KitScreen extends StatelessWidget {
  const KitScreen({
    super.key,
    required this.viewModel,
  });

  final KitViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('KIT')
          ],
        ),
      )
    );
  }
}