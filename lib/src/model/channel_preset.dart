import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';
import 'control.dart';

part 'channel_preset.mapper.dart';

@MappableEnum()
enum ChannelType {
  unspecified,
  global,
  sampler,
  instrument,
  mixer,
  player,
}

@MappableClass()
class Preset with PresetMappable {
  final String key;
  String name;
  String? description;
  List<Channel>? channels;

  Preset({
    required this.key,
    required this.name,
    this.description,
    this.channels,
  });
}

@MappableClass()
class Channel with ChannelMappable {
  final String key;
  String name;
  final ChannelType type;
  BaseControl volume;
  BaseControl? pan;
  List<FX>? fxs;
  List<Instrument>? instruments;

  Channel({
    required this.key,
    required this.name,
    required this.type,
    required this.volume,
    this.pan,
    this.fxs,
    this.instruments,
  });
}

@MappableClass()
class Instrument with InstrumentMappable {
  final String key;
  String name;
  BaseControl? volume;
  BaseControl? pan;
  List<FX>? tunes;
  List<Layer>? layers;

  Instrument({
    required this.key,
    required this.name,
    this.volume,
    this.pan,
    this.tunes,
    this.layers,
  });
}

@MappableClass()
class Layer with LayerMappable {
  final String key;
  String name;
  BaseControl? volume;
  BaseControl? pan;
  List<FX>? fxs;

  Layer({
    required this.key,
    required this.name,
    this.volume,
    this.pan,
    this.fxs,
  });
}

@MappableClass()
class BaseControl with BaseControlMappable implements Control {
  final String key;
  String name;
  double value;
  double? min;
  double? max;

  BaseControl({
    required this.key,
    required this.name,
    required this.value,
    this.min,
    this.max,
  });

  @override
  void setValue(double newValue) {
    if (min != null && newValue < min!) {
      throw Exception('Value $newValue is less than minimum $min');
    }
    if (max != null && newValue > max!) {
      throw Exception('Value $newValue is greater than maximum $max');
    }
    value = newValue;
  }
}

@MappableClass()
class FX with FXMappable {
  final String key;
  final String name;
  int order;
  final List<FXParam> params;

  FX({
    required this.key,
    required this.name,
    required this.order,
    required this.params,
  });
}

@MappableEnum()
enum FXParamType {
  unspecified,
  range,
  fixed,
  boolean,
}

@MappableClass()
class FXParam with FXParamMappable implements Control {
  final String key;
  final String name;
  int order;
  final FXParamType type;
  final double? min;
  final double? max;
  final int? divisions;
  List<FXParamDiscreteVal>? discreteVals;
  double value;

  FXParam({
    required this.key,
    required this.name,
    required this.order,
    required this.type,
    this.min,
    this.max,
    this.divisions,
    this.discreteVals,
    required this.value,
  });

  @override
  void setValue(double newValue) {
    if (min != null && newValue < min!) {
      throw Exception('Value $newValue is less than minimum $min');
    }
    if (max != null && newValue > max!) {
      throw Exception('Value $newValue is greater than maximum $max');
    }
    
    if (type == FXParamType.fixed && discreteVals != null) {
      final validValues = discreteVals!.map((v) => v.val).toList();
      if (!validValues.contains(newValue)) {
        throw Exception('Value $newValue is not one of the allowed values: $validValues');
      }
    }
    
    value = newValue;
  }
}

@MappableClass()
class FXParamDiscreteVal with FXParamDiscreteValMappable {
  String? name;
  final double val;

  FXParamDiscreteVal({
    this.name,
    required this.val,
  });
}