import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

abstract final class CustomIcons {

  static const Widget kit = SvgPicture(AssetBytesLoader('assets/icons/drum-kit.svg.vec'));
  static const Widget mixer = Icon(Icons.tune);
  static const Widget metronome = SvgPicture(AssetBytesLoader('assets/icons/metronome.svg.vec'));
  static const Widget player  = SvgPicture(AssetBytesLoader('assets/icons/play.svg.vec'));
  static const Widget settings = SvgPicture(AssetBytesLoader('assets/icons/gear.svg.vec'));

}
