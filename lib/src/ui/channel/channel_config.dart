import 'package:flutter/material.dart';

import '../core/localization/applocalization.dart';
import '../core/ui/error_indicator.dart';
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
      // TODO: вынести генерацию обертки в отдельную функцию, подобно как сделано для слайдера
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
          return child!;
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column (
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 20,
                child: Text('${viewModel.channel?.name}')
                ),
              Expanded(
                flex: 80,
                child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Builder(builder: (context) {
                                if (viewModel.channel != null) {
                                  return _buildChannelConfig(context);
                                }
                                return Container();
                              }
                            ),
                    )
              ),
            ],
          )
        )
      )
    );
  }

  Widget _buildChannelConfig(BuildContext context) {
    // TODO: make UI
    return Container();
  }

}