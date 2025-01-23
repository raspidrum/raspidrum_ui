// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelControlsImpl _$$ChannelControlsImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelControlsImpl(
      channels: (json['channels'] as List<dynamic>?)
          ?.map((e) => Channel.fromJson(e as Map<String, dynamic>))
          .toList(),
      fxs: (json['fxs'] as List<dynamic>?)
          ?.map((e) => FX.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChannelControlsImplToJson(
        _$ChannelControlsImpl instance) =>
    <String, dynamic>{
      'channels': instance.channels,
      'fxs': instance.fxs,
    };

_$ChannelImpl _$$ChannelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelImpl(
      key: json['key'] as String,
      level: (json['level'] as num).toDouble(),
      pan: (json['pan'] as num).toDouble(),
    );

Map<String, dynamic> _$$ChannelImplToJson(_$ChannelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'level': instance.level,
      'pan': instance.pan,
    };

_$FXImpl _$$FXImplFromJson(Map<String, dynamic> json) => _$FXImpl(
      key: json['key'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$FXImplToJson(_$FXImpl instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
