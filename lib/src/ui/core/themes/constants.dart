

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract final class Dimentions {
  static const double sliderPadding = 6.0;
  static const double smallPadding = 8.0;
  static const double bigPadding = 16.0;
  static const double borderRadius = 5.0;
  static const double buttonBorderRadius = borderRadius;
  static const double boxBorderRadius = borderRadius;
  static const Size buttonSize = Size(40,40);

  static const double channelControlWidth = 86.0;
  static const double channelControlHeight = 220;
}

abstract final class SliderStyle {
  static final BoxDecoration handle = BoxDecoration(
      // TODO: вынести в стиль light/dark
      color: Colors.black,
      borderRadius: BorderRadius.circular(Dimentions.borderRadius),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset.fromDirection(1, 3),
          blurRadius: 5,
        )
      ]);
}