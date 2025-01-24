// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelControlImpl _$$ChannelControlImplFromJson(Map<String, dynamic> json) =>
    _$ChannelControlImpl(
      key: json['key'] as String,
      seq: (json['seq'] as num).toInt(),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$ChannelControlImplToJson(
        _$ChannelControlImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'seq': instance.seq,
      'value': instance.value,
    };
