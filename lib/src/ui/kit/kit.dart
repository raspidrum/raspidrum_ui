import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raspidrum_ui/src/ui/core/themes/constants.dart';
import '../../routing/routes.dart';
import '../core/localization/applocalization.dart';
import '../core/themes/decorations.dart';
import '../core/ui/error_indicator.dart';
import '../core/ui/mix_slider.dart';
import 'kit_viewmodel.dart';

import '../../model/channel_preset.dart';

class KitScreen extends StatelessWidget {
  const KitScreen({
    super.key,
    required this.viewModel,
  });

  final KitViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(),
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
            if (viewModel.preset == null) {
              return Container();
            }
            return _buildSkeleton(context);
          },
        ));
  }

  Widget _buildSkeleton(BuildContext context) {
    return Align(
          alignment: Alignment.centerLeft,
          child: Column (
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 20,
                child: Text('KIT')
                ),
              Expanded(
                flex: 80,
                child: _buildKitMixer(context)
              )
            ],
          )
        );
  }

  Widget _buildKitMixer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimentions.smallPadding),
      child: Container(
        decoration: themeRoundedBox,
        padding: EdgeInsets.all(Dimentions.bigPadding),
        width: MediaQuery.of(context).size.width,
        child: _buildChannels(context),
        ),
    );  
  }

  Widget _buildChannels(BuildContext context) {
    var channels = viewModel.preset!.channels;
    if (channels == null) return Container();
    final chnlControls = List<Widget>.generate(
        channels.length, 
        (int index) => _buildChannel(context, channels[index], index),
        growable: false);
    return Row(children: chnlControls);
  }

  Widget _buildChannel(BuildContext context, Channel channel, int idx) {
    return 
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: Dimentions.buttonSize.width,
          height: Dimentions.buttonSize.height,
          child: IconButton.outlined(
            icon: const Icon(Icons.graphic_eq), 
            onPressed: () { 
              context.goNamed(
                ChannelRoutes.channelConfig, 
                //pathParameters: {ChannelRoutes.channelIdx: idx.toString()}
                pathParameters: {ChannelRoutes.channelIdx: channel.key}
                );
             },
          ),
        ),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(Dimentions.sliderPadding),
              child: MixSlider(
                min: 0.0,
                max: 110,
                values: [channel.level*100],
              ),
            ),
        ),
        Text(channel.name,
                style: Theme.of(context).textTheme.labelLarge)
      ],
    );
  }

}
