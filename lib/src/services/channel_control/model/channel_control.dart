import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_control.freezed.dart';
part 'channel_control.g.dart';

@freezed
class ChannelControl with _$ChannelControl {
  const factory ChannelControl({
    required String key,
    required int seq,
    required double value,
  }) = _ChannelControl;

  factory ChannelControl.fromJson(Map<String, Object?> json) => _$ChannelControlFromJson(json);
}