// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PresetImpl _$$PresetImplFromJson(Map<String, dynamic> json) => _$PresetImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      channels: (json['channels'] as List<dynamic>?)
          ?.map((e) => Channel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PresetImplToJson(_$PresetImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'description': instance.description,
      'channels': instance.channels,
    };

_$ChannelImpl _$$ChannelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$ChannelTypeEnumMap, json['type']),
      level: (json['level'] as num).toDouble(),
      pan: (json['pan'] as num).toDouble(),
      fxs: (json['fxs'] as List<dynamic>?)
          ?.map((e) => FX.fromJson(e as Map<String, dynamic>))
          .toList(),
      instruments: (json['instruments'] as List<dynamic>?)
          ?.map((e) => Instrument.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChannelImplToJson(_$ChannelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'type': _$ChannelTypeEnumMap[instance.type]!,
      'level': instance.level,
      'pan': instance.pan,
      'fxs': instance.fxs,
      'instruments': instance.instruments,
    };

const _$ChannelTypeEnumMap = {
  ChannelType.global: 'global',
  ChannelType.sampler: 'sampler',
  ChannelType.instrument: 'instrument',
  ChannelType.mixer: 'mixer',
  ChannelType.player: 'player',
};

_$InstrumentImpl _$$InstrumentImplFromJson(Map<String, dynamic> json) =>
    _$InstrumentImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      level: (json['level'] as num?)?.toDouble(),
      pan: (json['pan'] as num?)?.toDouble(),
      tunes: (json['tunes'] as List<dynamic>?)
          ?.map((e) => FX.fromJson(e as Map<String, dynamic>))
          .toList(),
      layers: (json['layers'] as List<dynamic>?)
          ?.map((e) => Layer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InstrumentImplToJson(_$InstrumentImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'level': instance.level,
      'pan': instance.pan,
      'tunes': instance.tunes,
      'layers': instance.layers,
    };

_$LayerImpl _$$LayerImplFromJson(Map<String, dynamic> json) => _$LayerImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      level: (json['level'] as num?)?.toDouble(),
      pan: (json['pan'] as num?)?.toDouble(),
      fxs: (json['fxs'] as List<dynamic>?)
          ?.map((e) => FX.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LayerImplToJson(_$LayerImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'level': instance.level,
      'pan': instance.pan,
      'fxs': instance.fxs,
    };

_$FXImpl _$$FXImplFromJson(Map<String, dynamic> json) => _$FXImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      params: (json['params'] as List<dynamic>)
          .map((e) => FXParam.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FXImplToJson(_$FXImpl instance) => <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'order': instance.order,
      'params': instance.params,
    };

_$FXParamImpl _$$FXParamImplFromJson(Map<String, dynamic> json) =>
    _$FXParamImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      type: $enumDecode(_$FXParamTypeEnumMap, json['type']),
      min: (json['min'] as num?)?.toDouble(),
      max: (json['max'] as num?)?.toDouble(),
      divisions: (json['divisions'] as num?)?.toInt(),
      discreteVals: (json['discreteVals'] as List<dynamic>?)
          ?.map((e) => FXParamDiscreteVal.fromJson(e as Map<String, dynamic>))
          .toList(),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$FXParamImplToJson(_$FXParamImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'order': instance.order,
      'type': _$FXParamTypeEnumMap[instance.type]!,
      'min': instance.min,
      'max': instance.max,
      'divisions': instance.divisions,
      'discreteVals': instance.discreteVals,
      'value': instance.value,
    };

const _$FXParamTypeEnumMap = {
  FXParamType.range: 'range',
  FXParamType.fixed: 'fixed',
  FXParamType.boolean: 'boolean',
};

_$FXParamDiscreteValImpl _$$FXParamDiscreteValImplFromJson(
        Map<String, dynamic> json) =>
    _$FXParamDiscreteValImpl(
      name: json['name'] as String?,
      val: (json['val'] as num).toDouble(),
    );

Map<String, dynamic> _$$FXParamDiscreteValImplToJson(
        _$FXParamDiscreteValImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'val': instance.val,
    };
