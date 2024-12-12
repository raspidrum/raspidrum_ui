import 'package:flutter/material.dart';
import '../core/localization/applocalization.dart';
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Builder(builder: (context) {
                                if (viewModel.preset != null) {
                                  return _buildKitMixer(context, viewModel.preset!);
                                }
                                return Container();
                              }
                            ),
                    )
                    ),
              ],
            ),
          ),
        ));
  }

  Widget _buildSlider() {
    return MixSlider();
  }

  Widget _buildKitMixer(BuildContext context, Preset preset) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all()
        ),
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: _buildChannels(preset.channels)!,
      ),  
    );
  }

  List<Widget>? _buildChannels(List<Channel>? channels) {
    if (channels == null) return List<Widget>.empty();
    final chnlControls = List<Widget>.generate(channels.length, 
      (int index) => _buildChannel(channels[index]), 
      growable: false);
    return chnlControls;
  }

  Widget _buildChannel(Channel channel) {
    return 
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 85,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MixSlider(
                min: 0.0,
                max: 110,
                values: [channel.level*100],
              ),
            ),
        ),
        Text(channel.name),
      ],
    );
  }

}
