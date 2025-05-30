// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'control_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ControlValueImpl _$$ControlValueImplFromJson(Map<String, dynamic> json) =>
    _$ControlValueImpl(
      key: json['key'] as String,
      seq: (json['seq'] as num).toInt(),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$ControlValueImplToJson(_$ControlValueImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'seq': instance.seq,
      'value': instance.value,
    };
