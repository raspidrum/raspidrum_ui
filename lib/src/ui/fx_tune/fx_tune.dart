import 'package:flutter/material.dart';

import '../../model/kit_preset.dart';
import '../core/themes/constants.dart';
import '../core/ui/fxparam_slider.dart';
import 'fx_tune_viewmodel.dart';

class FxTuneScreen extends StatelessWidget {
  const FxTuneScreen({
    super.key,
    required this.viewModel,
  });

  final FxTuneViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: viewModel.fxs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TODO: channel/instrument/layer name'),
          bottom: TabBar(
            isScrollable: true,
            tabs: _buildTabs(),
          ),
        ),
        body: TabBarView(
        children: _buildFxList(context)
      )
    ),
    );
  }

  List<Tab> _buildTabs() {
    return List<Tab>.generate(
      viewModel.fxs.length,
      (int idx) => Tab(text: viewModel.fxs[idx].name), 
      growable: false
    );
  }

  List<Widget> _buildFxList(BuildContext context) {
    return List<Widget>.generate(
      viewModel.fxs.length,
      (int idx) => _buildFxControls(context, viewModel.fxs[idx]),
      growable: false
    );
  }

  Widget _buildFxControls(BuildContext context, FX fx) {
    return Row(
      children: List<Widget>.generate(
        fx.params.length,
        (int idx) => _buildFxParam(context, fx.params[idx]),
        growable: false
      )
    );
  }

  Widget _buildFxParam(BuildContext context, FXParam param) {
    return Column(
      children: [
        // TODO: Slider only for param.type == range
        Expanded(child: _buildParamSlider(param)),
        Text(param.name,
                style: Theme.of(context).textTheme.labelLarge)
      ],
    );
  }

  Widget _buildParamSlider(FXParam param) {
    return Padding(
      padding: const EdgeInsets.all(Dimentions.sliderPadding),
      child: FxParamSlider(
        min: param.min == null ? 0.0 : param.min! *100,
        max: param.max == null ? 100 : param.max! *100,
        values: [param.value * 100],
        onDragging: (handlerIndex, lowerValue, upperValue) {
          viewModel.sendValue(param, lowerValue/100);
        },
      ),
    );
  }

}