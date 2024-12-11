import 'package:flutter/material.dart';
import 'package:raspidrum_ui/src/ui/core/localization/applocalization.dart';
import 'package:raspidrum_ui/src/ui/core/ui/error_indicator.dart';
import 'package:raspidrum_ui/src/ui/core/ui/mix_slider.dart';
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
        body: ListenableBuilder(
          listenable: viewModel.load,
          builder: (context, child) {
            if (viewModel.load.running) {
              return const Center(child: CircularProgressIndicator());
            }
            if (viewModel.load.error) {
              return Center(
                child: ErrorIndicator(
                  title: AppLocalization.of(context).errorWhileLoadingKitPreset, 
                  label: AppLocalization.of(context).tryAgain, 
                  onPressed: viewModel.load.execute
                  ),
              );
            }
            return child!;
          },
          child: Align(
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
          ),
        ));
  }

  Widget _buildSlider() {
    return MixSlider();
  }



}
