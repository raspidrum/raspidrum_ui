import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class FxParamSlider extends StatelessWidget {

  final Function(int handlerIndex, dynamic lowerValue, dynamic upperValue)?
      onDragStarted;
  final Function(int handlerIndex, dynamic lowerValue, dynamic upperValue)?
      onDragCompleted;
  final Function(int handlerIndex, dynamic lowerValue, dynamic upperValue)?
      onDragging;
  final double? min;
  final double? max;
  final List<double>? values;
  final List<FlutterSliderFixedValue>? fixedValues;

  const FxParamSlider(
    {super.key,
    this.min,
    this.max,
    this.values,
    this.fixedValues,
    this.onDragStarted,
    this.onDragCompleted,
    this.onDragging,
    }
    );

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      axis: Axis.vertical,
      rtl: true,
      values: values ?? [0],
      min: min ?? -100,
      max: max ?? 100,
      fixedValues: fixedValues,
      onDragStarted: onDragStarted,
      onDragCompleted: onDragCompleted,
      onDragging: onDragging,
      tooltip: FlutterSliderTooltip(
        disabled: false,
        alwaysShowTooltip: true,
        ),
      handler: FlutterSliderHandler(
        decoration: BoxDecoration(),
        child: Icon(
              size: 32,
              Icons.drag_handle,
              color: Colors.black,
            ),
      ),
      trackBar: FlutterSliderTrackBar(
        activeTrackBarHeight: 8,
        inactiveTrackBarHeight: 10,
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.black12,
          border: Border.all(width: 2, color: Colors.blue),
        ),
        activeTrackBar: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.blue.withOpacity(0.7)),
      ),
    );
  }
}
