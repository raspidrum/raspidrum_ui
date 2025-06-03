//
//  Generated code. Do not modify.
//  source: preset.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use channelTypeDescriptor instead')
const ChannelType$json = {
  '1': 'ChannelType',
  '2': [
    {'1': 'CHANNEL_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'CHANNEL_TYPE_GLOBAL', '2': 1},
    {'1': 'CHANNEL_TYPE_SAMPLER', '2': 2},
    {'1': 'CHANNEL_TYPE_INSTRUMENT', '2': 3},
    {'1': 'CHANNEL_TYPE_MIXER', '2': 4},
    {'1': 'CHANNEL_TYPE_PLAYER', '2': 5},
  ],
};

/// Descriptor for `ChannelType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List channelTypeDescriptor = $convert.base64Decode(
    'CgtDaGFubmVsVHlwZRIcChhDSEFOTkVMX1RZUEVfVU5TUEVDSUZJRUQQABIXChNDSEFOTkVMX1'
    'RZUEVfR0xPQkFMEAESGAoUQ0hBTk5FTF9UWVBFX1NBTVBMRVIQAhIbChdDSEFOTkVMX1RZUEVf'
    'SU5TVFJVTUVOVBADEhYKEkNIQU5ORUxfVFlQRV9NSVhFUhAEEhcKE0NIQU5ORUxfVFlQRV9QTE'
    'FZRVIQBQ==');

@$core.Deprecated('Use fXParamTypeDescriptor instead')
const FXParamType$json = {
  '1': 'FXParamType',
  '2': [
    {'1': 'FX_PARAM_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'FX_PARAM_TYPE_RANGE', '2': 1},
    {'1': 'FX_PARAM_TYPE_FIXED', '2': 2},
    {'1': 'FX_PARAM_TYPE_BOOLEAN', '2': 3},
  ],
};

/// Descriptor for `FXParamType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fXParamTypeDescriptor = $convert.base64Decode(
    'CgtGWFBhcmFtVHlwZRIdChlGWF9QQVJBTV9UWVBFX1VOU1BFQ0lGSUVEEAASFwoTRlhfUEFSQU'
    '1fVFlQRV9SQU5HRRABEhcKE0ZYX1BBUkFNX1RZUEVfRklYRUQQAhIZChVGWF9QQVJBTV9UWVBF'
    'X0JPT0xFQU4QAw==');

@$core.Deprecated('Use getPresetRequestDescriptor instead')
const GetPresetRequest$json = {
  '1': 'GetPresetRequest',
  '2': [
    {'1': 'preset_id', '3': 1, '4': 1, '5': 3, '10': 'presetId'},
  ],
};

/// Descriptor for `GetPresetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPresetRequestDescriptor = $convert.base64Decode(
    'ChBHZXRQcmVzZXRSZXF1ZXN0EhsKCXByZXNldF9pZBgBIAEoA1IIcHJlc2V0SWQ=');

@$core.Deprecated('Use presetResponseDescriptor instead')
const PresetResponse$json = {
  '1': 'PresetResponse',
  '2': [
    {'1': 'preset', '3': 1, '4': 1, '5': 11, '6': '.kitPreset.v1.Preset', '10': 'preset'},
  ],
};

/// Descriptor for `PresetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List presetResponseDescriptor = $convert.base64Decode(
    'Cg5QcmVzZXRSZXNwb25zZRIsCgZwcmVzZXQYASABKAsyFC5raXRQcmVzZXQudjEuUHJlc2V0Ug'
    'ZwcmVzZXQ=');

@$core.Deprecated('Use presetDescriptor instead')
const Preset$json = {
  '1': 'Preset',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'channels', '3': 5, '4': 3, '5': 11, '6': '.kitPreset.v1.Channel', '10': 'channels'},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `Preset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List presetDescriptor = $convert.base64Decode(
    'CgZQcmVzZXQSDgoCaWQYASABKANSAmlkEhAKA2tleRgCIAEoCVIDa2V5EhIKBG5hbWUYAyABKA'
    'lSBG5hbWUSJQoLZGVzY3JpcHRpb24YBCABKAlIAFILZGVzY3JpcHRpb26IAQESMQoIY2hhbm5l'
    'bHMYBSADKAsyFS5raXRQcmVzZXQudjEuQ2hhbm5lbFIIY2hhbm5lbHNCDgoMX2Rlc2NyaXB0aW'
    '9u');

@$core.Deprecated('Use channelDescriptor instead')
const Channel$json = {
  '1': 'Channel',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.kitPreset.v1.ChannelType', '10': 'type'},
    {'1': 'volume', '3': 4, '4': 1, '5': 11, '6': '.kitPreset.v1.BaseControl', '10': 'volume'},
    {'1': 'pan', '3': 5, '4': 1, '5': 11, '6': '.kitPreset.v1.BaseControl', '9': 0, '10': 'pan', '17': true},
    {'1': 'fxs', '3': 6, '4': 3, '5': 11, '6': '.kitPreset.v1.FX', '10': 'fxs'},
    {'1': 'instruments', '3': 7, '4': 3, '5': 11, '6': '.kitPreset.v1.Instrument', '10': 'instruments'},
  ],
  '8': [
    {'1': '_pan'},
  ],
};

/// Descriptor for `Channel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelDescriptor = $convert.base64Decode(
    'CgdDaGFubmVsEhAKA2tleRgBIAEoCVIDa2V5EhIKBG5hbWUYAiABKAlSBG5hbWUSLQoEdHlwZR'
    'gDIAEoDjIZLmtpdFByZXNldC52MS5DaGFubmVsVHlwZVIEdHlwZRIxCgZ2b2x1bWUYBCABKAsy'
    'GS5raXRQcmVzZXQudjEuQmFzZUNvbnRyb2xSBnZvbHVtZRIwCgNwYW4YBSABKAsyGS5raXRQcm'
    'VzZXQudjEuQmFzZUNvbnRyb2xIAFIDcGFuiAEBEiIKA2Z4cxgGIAMoCzIQLmtpdFByZXNldC52'
    'MS5GWFIDZnhzEjoKC2luc3RydW1lbnRzGAcgAygLMhgua2l0UHJlc2V0LnYxLkluc3RydW1lbn'
    'RSC2luc3RydW1lbnRzQgYKBF9wYW4=');

@$core.Deprecated('Use instrumentDescriptor instead')
const Instrument$json = {
  '1': 'Instrument',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'volume', '3': 3, '4': 1, '5': 11, '6': '.kitPreset.v1.BaseControl', '9': 0, '10': 'volume', '17': true},
    {'1': 'pan', '3': 4, '4': 1, '5': 11, '6': '.kitPreset.v1.BaseControl', '9': 1, '10': 'pan', '17': true},
    {'1': 'tunes', '3': 5, '4': 3, '5': 11, '6': '.kitPreset.v1.FX', '10': 'tunes'},
    {'1': 'layers', '3': 6, '4': 3, '5': 11, '6': '.kitPreset.v1.Layer', '10': 'layers'},
  ],
  '8': [
    {'1': '_volume'},
    {'1': '_pan'},
  ],
};

/// Descriptor for `Instrument`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List instrumentDescriptor = $convert.base64Decode(
    'CgpJbnN0cnVtZW50EhAKA2tleRgBIAEoCVIDa2V5EhIKBG5hbWUYAiABKAlSBG5hbWUSNgoGdm'
    '9sdW1lGAMgASgLMhkua2l0UHJlc2V0LnYxLkJhc2VDb250cm9sSABSBnZvbHVtZYgBARIwCgNw'
    'YW4YBCABKAsyGS5raXRQcmVzZXQudjEuQmFzZUNvbnRyb2xIAVIDcGFuiAEBEiYKBXR1bmVzGA'
    'UgAygLMhAua2l0UHJlc2V0LnYxLkZYUgV0dW5lcxIrCgZsYXllcnMYBiADKAsyEy5raXRQcmVz'
    'ZXQudjEuTGF5ZXJSBmxheWVyc0IJCgdfdm9sdW1lQgYKBF9wYW4=');

@$core.Deprecated('Use layerDescriptor instead')
const Layer$json = {
  '1': 'Layer',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'volume', '3': 3, '4': 1, '5': 11, '6': '.kitPreset.v1.BaseControl', '9': 0, '10': 'volume', '17': true},
    {'1': 'pan', '3': 4, '4': 1, '5': 11, '6': '.kitPreset.v1.BaseControl', '9': 1, '10': 'pan', '17': true},
    {'1': 'fxs', '3': 5, '4': 3, '5': 11, '6': '.kitPreset.v1.FX', '10': 'fxs'},
  ],
  '8': [
    {'1': '_volume'},
    {'1': '_pan'},
  ],
};

/// Descriptor for `Layer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layerDescriptor = $convert.base64Decode(
    'CgVMYXllchIQCgNrZXkYASABKAlSA2tleRISCgRuYW1lGAIgASgJUgRuYW1lEjYKBnZvbHVtZR'
    'gDIAEoCzIZLmtpdFByZXNldC52MS5CYXNlQ29udHJvbEgAUgZ2b2x1bWWIAQESMAoDcGFuGAQg'
    'ASgLMhkua2l0UHJlc2V0LnYxLkJhc2VDb250cm9sSAFSA3BhbogBARIiCgNmeHMYBSADKAsyEC'
    '5raXRQcmVzZXQudjEuRlhSA2Z4c0IJCgdfdm9sdW1lQgYKBF9wYW4=');

@$core.Deprecated('Use baseControlDescriptor instead')
const BaseControl$json = {
  '1': 'BaseControl',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 3, '4': 1, '5': 1, '10': 'value'},
    {'1': 'min', '3': 4, '4': 1, '5': 1, '9': 0, '10': 'min', '17': true},
    {'1': 'max', '3': 5, '4': 1, '5': 1, '9': 1, '10': 'max', '17': true},
  ],
  '8': [
    {'1': '_min'},
    {'1': '_max'},
  ],
};

/// Descriptor for `BaseControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseControlDescriptor = $convert.base64Decode(
    'CgtCYXNlQ29udHJvbBIQCgNrZXkYASABKAlSA2tleRISCgRuYW1lGAIgASgJUgRuYW1lEhQKBX'
    'ZhbHVlGAMgASgBUgV2YWx1ZRIVCgNtaW4YBCABKAFIAFIDbWluiAEBEhUKA21heBgFIAEoAUgB'
    'UgNtYXiIAQFCBgoEX21pbkIGCgRfbWF4');

@$core.Deprecated('Use fXDescriptor instead')
const FX$json = {
  '1': 'FX',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
    {'1': 'params', '3': 4, '4': 3, '5': 11, '6': '.kitPreset.v1.FXParam', '10': 'params'},
  ],
};

/// Descriptor for `FX`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fXDescriptor = $convert.base64Decode(
    'CgJGWBIQCgNrZXkYASABKAlSA2tleRISCgRuYW1lGAIgASgJUgRuYW1lEhQKBW9yZGVyGAMgAS'
    'gFUgVvcmRlchItCgZwYXJhbXMYBCADKAsyFS5raXRQcmVzZXQudjEuRlhQYXJhbVIGcGFyYW1z');

@$core.Deprecated('Use fXParamDescriptor instead')
const FXParam$json = {
  '1': 'FXParam',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
    {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.kitPreset.v1.FXParamType', '10': 'type'},
    {'1': 'min', '3': 5, '4': 1, '5': 1, '9': 0, '10': 'min', '17': true},
    {'1': 'max', '3': 6, '4': 1, '5': 1, '9': 1, '10': 'max', '17': true},
    {'1': 'divisions', '3': 7, '4': 1, '5': 5, '9': 2, '10': 'divisions', '17': true},
    {'1': 'discrete_vals', '3': 8, '4': 3, '5': 11, '6': '.kitPreset.v1.FXParamDiscreteVal', '10': 'discreteVals'},
    {'1': 'value', '3': 9, '4': 1, '5': 1, '10': 'value'},
  ],
  '8': [
    {'1': '_min'},
    {'1': '_max'},
    {'1': '_divisions'},
  ],
};

/// Descriptor for `FXParam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fXParamDescriptor = $convert.base64Decode(
    'CgdGWFBhcmFtEhAKA2tleRgBIAEoCVIDa2V5EhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFb3JkZX'
    'IYAyABKAVSBW9yZGVyEi0KBHR5cGUYBCABKA4yGS5raXRQcmVzZXQudjEuRlhQYXJhbVR5cGVS'
    'BHR5cGUSFQoDbWluGAUgASgBSABSA21pbogBARIVCgNtYXgYBiABKAFIAVIDbWF4iAEBEiEKCW'
    'RpdmlzaW9ucxgHIAEoBUgCUglkaXZpc2lvbnOIAQESRQoNZGlzY3JldGVfdmFscxgIIAMoCzIg'
    'LmtpdFByZXNldC52MS5GWFBhcmFtRGlzY3JldGVWYWxSDGRpc2NyZXRlVmFscxIUCgV2YWx1ZR'
    'gJIAEoAVIFdmFsdWVCBgoEX21pbkIGCgRfbWF4QgwKCl9kaXZpc2lvbnM=');

@$core.Deprecated('Use fXParamDiscreteValDescriptor instead')
const FXParamDiscreteVal$json = {
  '1': 'FXParamDiscreteVal',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'val', '3': 2, '4': 1, '5': 1, '10': 'val'},
  ],
  '8': [
    {'1': '_name'},
  ],
};

/// Descriptor for `FXParamDiscreteVal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fXParamDiscreteValDescriptor = $convert.base64Decode(
    'ChJGWFBhcmFtRGlzY3JldGVWYWwSFwoEbmFtZRgBIAEoCUgAUgRuYW1liAEBEhAKA3ZhbBgCIA'
    'EoAVIDdmFsQgcKBV9uYW1l');

