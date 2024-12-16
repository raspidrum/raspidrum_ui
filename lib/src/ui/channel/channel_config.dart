import 'package:flutter/material.dart';
import 'package:raspidrum_ui/src/ui/core/themes/constants.dart';

import '../core/localization/applocalization.dart';
import '../core/themes/decorations.dart';
import '../core/ui/error_indicator.dart';
import '../core/ui/mix_slider.dart';
import 'channel_config_viewmodel.dart';

class ChannelConfigScreen extends StatelessWidget {
  const ChannelConfigScreen({
    super.key,
    required this.viewModel,
  });

  final ChannelConfigViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onPressed: (){}
                ),
            );
          }
          if (viewModel.channel == null) {
            return Container();
          }
          return _buildSkeleton(context);
        }
      )
    );
  }

  Widget _buildSkeleton(BuildContext context) {
    return Align(
          alignment: Alignment.centerLeft,
          child: Column (
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 20,
                child: Text(viewModel.channel!.name)
                ),
              Expanded(
                flex: 80,
                child: _buildChannelConfig(context)
              )
            ],
          )
        );
  }

  Widget _buildChannelConfig(BuildContext context) {
    return Container(
      decoration: themeRoundedBox,
      padding: EdgeInsets.all(Dimentions.containerPadding),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          _buildChannelLevel(context),
          //_buildInstruments(context),
        ],
        ),
      );  
  }

Widget _buildChannelLevel(BuildContext context) {
  var channel = viewModel.channel!;
  return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 12,
          child: IconButton.outlined(
            iconSize: 24,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                // TODO: вынести в стиль
                borderRadius: BorderRadius.circular(Dimentions.buttonBorderRadius), // <-- Radius
                ),
            ),
            icon: const Icon(
              Icons.graphic_eq
            ), 
            onPressed: () { 
            
             },
          ),
        ),
        Expanded(
          flex: 83,
          child: Padding(
              padding: const EdgeInsets.all(Dimentions.sliderPadding),
              child: MixSlider(
                min: 0.0,
                max: 110,
                values: [channel.level*100],
              ),
            ),
        ),
        Expanded(
          flex: 5,
          child: Text(channel.name)
        ),
      ],
    );
}

}