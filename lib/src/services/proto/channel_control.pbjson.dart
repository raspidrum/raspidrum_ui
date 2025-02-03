//
//  Generated code. Do not modify.
//  source: channel_control.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use controlValueDescriptor instead')
const ControlValue$json = {
  '1': 'ControlValue',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'seq', '3': 2, '4': 1, '5': 3, '10': 'seq'},
    {'1': 'value', '3': 3, '4': 1, '5': 1, '10': 'value'},
  ],
};

/// Descriptor for `ControlValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controlValueDescriptor = $convert.base64Decode(
    'CgxDb250cm9sVmFsdWUSEAoDa2V5GAEgASgJUgNrZXkSEAoDc2VxGAIgASgDUgNzZXESFAoFdm'
    'FsdWUYAyABKAFSBXZhbHVl');

const $core.Map<$core.String, $core.dynamic> ChannelControlServiceBase$json = {
  '1': 'ChannelControl',
  '2': [
    {'1': 'SetValue', '2': '.channelControl.v1.ControlValue', '3': '.channelControl.v1.ControlValue', '5': true, '6': true},
  ],
};

@$core.Deprecated('Use channelControlServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> ChannelControlServiceBase$messageJson = {
  '.channelControl.v1.ControlValue': ControlValue$json,
};

/// Descriptor for `ChannelControl`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List channelControlServiceDescriptor = $convert.base64Decode(
    'Cg5DaGFubmVsQ29udHJvbBJQCghTZXRWYWx1ZRIfLmNoYW5uZWxDb250cm9sLnYxLkNvbnRyb2'
    'xWYWx1ZRofLmNoYW5uZWxDb250cm9sLnYxLkNvbnRyb2xWYWx1ZSgBMAE=');

