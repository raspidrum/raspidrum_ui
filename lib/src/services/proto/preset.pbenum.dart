//
//  Generated code. Do not modify.
//  source: preset.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Channel type enumeration
class ChannelType extends $pb.ProtobufEnum {
  static const ChannelType CHANNEL_TYPE_UNSPECIFIED = ChannelType._(0, _omitEnumNames ? '' : 'CHANNEL_TYPE_UNSPECIFIED');
  static const ChannelType CHANNEL_TYPE_GLOBAL = ChannelType._(1, _omitEnumNames ? '' : 'CHANNEL_TYPE_GLOBAL');
  static const ChannelType CHANNEL_TYPE_SAMPLER = ChannelType._(2, _omitEnumNames ? '' : 'CHANNEL_TYPE_SAMPLER');
  static const ChannelType CHANNEL_TYPE_INSTRUMENT = ChannelType._(3, _omitEnumNames ? '' : 'CHANNEL_TYPE_INSTRUMENT');
  static const ChannelType CHANNEL_TYPE_MIXER = ChannelType._(4, _omitEnumNames ? '' : 'CHANNEL_TYPE_MIXER');
  static const ChannelType CHANNEL_TYPE_PLAYER = ChannelType._(5, _omitEnumNames ? '' : 'CHANNEL_TYPE_PLAYER');

  static const $core.List<ChannelType> values = <ChannelType> [
    CHANNEL_TYPE_UNSPECIFIED,
    CHANNEL_TYPE_GLOBAL,
    CHANNEL_TYPE_SAMPLER,
    CHANNEL_TYPE_INSTRUMENT,
    CHANNEL_TYPE_MIXER,
    CHANNEL_TYPE_PLAYER,
  ];

  static final $core.Map<$core.int, ChannelType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChannelType? valueOf($core.int value) => _byValue[value];

  const ChannelType._($core.int v, $core.String n) : super(v, n);
}

/// FX parameter type enumeration
class FXParamType extends $pb.ProtobufEnum {
  static const FXParamType FX_PARAM_TYPE_UNSPECIFIED = FXParamType._(0, _omitEnumNames ? '' : 'FX_PARAM_TYPE_UNSPECIFIED');
  static const FXParamType FX_PARAM_TYPE_RANGE = FXParamType._(1, _omitEnumNames ? '' : 'FX_PARAM_TYPE_RANGE');
  static const FXParamType FX_PARAM_TYPE_FIXED = FXParamType._(2, _omitEnumNames ? '' : 'FX_PARAM_TYPE_FIXED');
  static const FXParamType FX_PARAM_TYPE_BOOLEAN = FXParamType._(3, _omitEnumNames ? '' : 'FX_PARAM_TYPE_BOOLEAN');

  static const $core.List<FXParamType> values = <FXParamType> [
    FX_PARAM_TYPE_UNSPECIFIED,
    FX_PARAM_TYPE_RANGE,
    FX_PARAM_TYPE_FIXED,
    FX_PARAM_TYPE_BOOLEAN,
  ];

  static final $core.Map<$core.int, FXParamType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FXParamType? valueOf($core.int value) => _byValue[value];

  const FXParamType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
