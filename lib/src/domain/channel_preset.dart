import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'channel_preset.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'channel_preset.g.dart';

@unfreezed
class Preset with _$Preset {
  const factory Preset({
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
  const factory Channel({
    required final String key,
    required String name,
    required final ChannelType type,
    required double level,
    required double pan,
    List<FX>? fxs,
    List<Instrument>? instruments
  }) = _Channel;

  factory Channel.fromJson(Map<String, Object?> json)
    => _$ChannelFromJson(json);
}

@unfreezed
class Instrument with _$Instrument {
  const factory Instrument({
    required final String key,
    required String name,
    List<FX>? tunes,
    List<Layer>? layers,
  }) = _Instrument;

  factory Instrument.fromJson(Map<String, Object?> json)
    => _$InstrumentFromJson(json);
}

@unfreezed
class Layer with _$Layer {
  const factory Layer({
    required final String key,
    required String name,
    double? level,
    List<FX>? fxs
  }) = _Layer;

  factory Layer.fromJson(Map<String, Object?> json)
    => _$LayerFromJson(json);
}

@unfreezed
class FX with _$FX {
  const factory FX({
    required final String key,
    required final String name,
    required int order,
    required final List<FXParam> params,
  }) = _FX;

  factory FX.fromJson(Map<String, Object?> json)
    => _$FXFromJson(json);
}

enum FXParamType {
  range,
  fixed,
  boolean,
}

// TODO: rewrite to multiple constructor by type
@unfreezed
class FXParam with _$FXParam {
  const factory FXParam({
    required final String key,
    required final String name,
    required int order,
    required final FXParamType type,
    final double? min,
    final double? max,
    final int? divisions,
    List<FXParamDiscreteVal>? discrete_vals,
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