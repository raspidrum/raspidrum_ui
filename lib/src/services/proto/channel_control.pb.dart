//
//  Generated code. Do not modify.
//  source: channel_control.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ControlValue extends $pb.GeneratedMessage {
  factory ControlValue({
    $core.String? key,
    $fixnum.Int64? seq,
    $core.double? value,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (seq != null) {
      $result.seq = seq;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  ControlValue._() : super();
  factory ControlValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ControlValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ControlValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'channelControl.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aInt64(2, _omitFieldNames ? '' : 'seq')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ControlValue clone() => ControlValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ControlValue copyWith(void Function(ControlValue) updates) => super.copyWith((message) => updates(message as ControlValue)) as ControlValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ControlValue create() => ControlValue._();
  ControlValue createEmptyInstance() => create();
  static $pb.PbList<ControlValue> createRepeated() => $pb.PbList<ControlValue>();
  @$core.pragma('dart2js:noInline')
  static ControlValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ControlValue>(create);
  static ControlValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get seq => $_getI64(1);
  @$pb.TagNumber(2)
  set seq($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeq() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeq() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

class ChannelControlApi {
  $pb.RpcClient _client;
  ChannelControlApi(this._client);

  $async.Future<ControlValue> setValue($pb.ClientContext? ctx, ControlValue request) =>
    _client.invoke<ControlValue>(ctx, 'ChannelControl', 'SetValue', request, ControlValue())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
