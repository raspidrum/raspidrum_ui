import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class MixSlider extends StatelessWidget {

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

  const MixSlider(
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
      min: min ?? 0,
      max: max ?? 100,
      fixedValues: fixedValues,
      onDragStarted: onDragStarted,
      onDragCompleted: onDragCompleted,
      onDragging: onDragging,
      tooltip: FlutterSliderTooltip(disabled: true),
      hatchMark: FlutterSliderHatchMark(
          linesDistanceFromTrackBar: -20,
          labelsDistanceFromTrackBar: -60,
          density: 0.4,
          displayLines: true,
          smallLine: FlutterSliderSizedBox(
              height: 5,
              width: 1,
              decoration: BoxDecoration(color: Colors.black45)),
          bigLine: FlutterSliderSizedBox(
              height: 5,
              width: 1,
              decoration: BoxDecoration(color: Colors.black45)),
          labels: [
            FlutterSliderHatchMarkLabel(percent: 0, label: Text('\u{221E}')),
            FlutterSliderHatchMarkLabel(percent: 8, label: Text('-48')),
            FlutterSliderHatchMarkLabel(percent: 20, label: Text('-36')),
            FlutterSliderHatchMarkLabel(percent: 35, label: Text('-24')),
            FlutterSliderHatchMarkLabel(percent: 55, label: Text('-12')),
            FlutterSliderHatchMarkLabel(percent: 70, label: Text('-6')),
            FlutterSliderHatchMarkLabel(percent: 85, label: Text('0')),
            FlutterSliderHatchMarkLabel(percent: 100, label: Text('6')),
          ]),
      handler: FlutterSliderHandler(
        decoration: BoxDecoration(),
        child: Container(
          decoration: new BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset.fromDirection(1, 3),
                  blurRadius: 5,
                )
              ]),
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
