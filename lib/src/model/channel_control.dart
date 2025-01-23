import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_control.freezed.dart';
part 'channel_control.g.dart';

@unfreezed
class ChannelControls with _$ChannelControls {
  factory ChannelControls({
    List<Channel>? channels,
    List<FX>? fxs,
  }) = _ChannelControls;

  factory ChannelControls.fromJson(Map<String, Object?> json) => _$ChannelControlsFromJson(json);
}

@freezed
class Channel with _$Channel {
  factory Channel({
    required final String key,
    required double level,
    required double pan,
  }) = _Channel;

  factory Channel.fromJson(Map<String, Object?> json) => _$ChannelFromJson(json);
}

@freezed
class FX with _$FX {
  factory FX({
    required final String key,
    required double value,
  }) = _FX;

  factory FX.fromJson(Map<String, Object?> json) => _$FXFromJson(json);
}