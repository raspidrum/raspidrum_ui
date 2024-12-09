import 'package:flutter/material.dart';
import 'package:raspidrum_ui/src/ui/common/mix_slider.dart';
import 'package:raspidrum_ui/src/ui/kit/kit_viewmodel.dart';

class KitScreen extends StatelessWidget {
  const KitScreen({
    super.key,
    required this.viewModel,
  });

  final KitViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(flex: 20, child: const Text('KIT')),
              Expanded(
                  flex: 80,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: _buildSlider(),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }

  Widget _buildSlider() {
    return MixSlider();
  }



}
