import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'channel_preset.freezed.dart';
part 'channel_preset.g.dart';

@unfreezed
class Preset with _$Preset {
  factory Preset({
    required final String key,
    required String name,
    String? description,
    List<Channel>? channels,
  }) = _Preset;

  factory Preset.fromJson(Map<String, Object?> json)
    => _$PresetFromJson(json);
}

enum ChannelType {
  global,
  sampler,
  instrument,
  mixer,
  player,
}

// TODO: rewrite to multiple constructor by type
@unfreezed
class Channel with _$Channel {
  factory Channel({
    required final String key,
    required String name,
    required final ChannelType type,
    required double volume,
    required double pan,
    List<FX>? fxs,
    List<Instrument>? instruments
  }) = _Channel;

  factory Channel.fromJson(Map<String, Object?> json)
    => _$ChannelFromJson(json);
}

@unfreezed
class Instrument with _$Instrument {
  factory Instrument({
    required final String key,
    required String name,
    double? volume,
    double? pan,
    List<FX>? tunes,
    List<Layer>? layers,
  }) = _Instrument;

  factory Instrument.fromJson(Map<String, Object?> json)
    => _$InstrumentFromJson(json);
}

@unfreezed
class Layer with _$Layer {
  factory Layer({
    required final String key,
    required String name,
    double? volume,
    double? pan,
    List<FX>? fxs
  }) = _Layer;

  factory Layer.fromJson(Map<String, Object?> json)
    => _$LayerFromJson(json);
}

@unfreezed
class FX with _$FX {
  factory FX({
    required final String key,
    required final String name,
    required int order,
    required final List<FXParam> params,
  }) = _FX;

  factory FX.fromJson(Map<String, Object?> json)
    => _$FXFromJson(json);
}

// Параметры могут быть:
// - диапазонные. Ограничения задаются в range_min и range_max
// - дискретные - набор допустимых значений. Список допустимых значений задается в FxParamDiscreteVal
// - логические - не указываются range_min, range_max, divisions и discrete_vals. false: default==0; true: default==1.0
enum FXParamType {
  range,
  fixed,
  boolean,
}

// TODO: rewrite to multiple constructor by type
@unfreezed
class FXParam with _$FXParam {
  factory FXParam({
    required final String key,
    required final String name,
    required int order,
    required final FXParamType type,
    final double? min,
    final double? max,
    final int? divisions,
    List<FXParamDiscreteVal>? discreteVals,
    required double value,
  }) = _FXParam;

  factory FXParam.fromJson(Map<String, Object?> json)
    => _$FXParamFromJson(json);
}


@freezed
class FXParamDiscreteVal with _$FXParamDiscreteVal {
  const factory FXParamDiscreteVal({
    String? name,
    required double val
  }) = _FXParamDiscreteVal;

  factory FXParamDiscreteVal.fromJson(Map<String, Object?> json)
    => _$FXParamDiscreteValFromJson(json);

}