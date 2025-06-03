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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'preset.pbenum.dart';

export 'preset.pbenum.dart';

/// Request message for loading a preset
class GetPresetRequest extends $pb.GeneratedMessage {
  factory GetPresetRequest({
    $fixnum.Int64? presetId,
  }) {
    final $result = create();
    if (presetId != null) {
      $result.presetId = presetId;
    }
    return $result;
  }
  GetPresetRequest._() : super();
  factory GetPresetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPresetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPresetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kitPreset.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'presetId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPresetRequest clone() => GetPresetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPresetRequest copyWith(void Function(GetPresetRequest) updates) => super.copyWith((message) => updates(message as GetPresetRequest)) as GetPresetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPresetRequest create() => GetPresetRequest._();
  GetPresetRequest createEmptyInstance() => create();
  static $pb.PbList<GetPresetRequest> createRepeated() => $pb.PbList<GetPresetRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPresetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPresetRequest>(create);
  static GetPresetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get presetId => $_getI64(0);
  @$pb.TagNumber(1)
  set presetId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPresetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPresetId() => clearField(1);
}

/// Response message for loading a preset
class PresetResponse extends $pb.GeneratedMessage {
  factory PresetResponse({
    Preset? preset,
  }) {
    final $result = create();
    if (preset != null) {
      $result.preset = preset;
    }
    return $result;
  }
  PresetResponse._() : super();
  factory PresetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PresetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PresetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kitPreset.v1'), createEmptyInstance: create)
    ..aOM<Preset>(1, _omitFieldNames ? '' : 'preset', subBuilder: Preset.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PresetResponse clone() => PresetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PresetResponse copyWith(void Function(PresetResponse) updates) => super.copyWith((message) => updates(message as PresetResponse)) as PresetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PresetResponse create() => PresetResponse._();
  PresetResponse createEmptyInstance() => create();
  static $pb.PbList<PresetResponse> createRepeated() => $pb.PbList<PresetResponse>();
  @$core.pragma('dart2js:noInline')
  static PresetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PresetResponse>(create);
  static PresetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Preset get preset => $_getN(0);
  @$pb.TagNumber(1)
  set preset(Preset v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPreset() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreset() => clearField(1);
  @$pb.TagNumber(1)
  Preset ensurePreset() => $_ensure(0);
}

/// Preset message
class Preset extends $pb.GeneratedMessage {
  factory Preset({
    $fixnum.Int64? id,
    $core.String? key,
    $core.String? name,
    $core.String? description,
    $core.Iterable<Channel>? channels,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (key != null) {
      $result.key = key;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (channels != null) {
      $result.channels.addAll(channels);
    }
    return $result;
  }
  Preset._() : super();
  factory Preset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Preset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Preset', package: const $pb.PackageName(_omitMessageNames ? '' : 'kitPreset.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..pc<Channel>(5, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: Channel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Preset clone() => Preset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Preset copyWith(void Function(Preset) updates) => super.copyWith((message) => updates(message as Preset)) as Preset;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Preset create() => Preset._();
  Preset createEmptyInstance() => create();
  static $pb.PbList<Preset> createRepeated() => $pb.PbList<Preset>();
  @$core.pragma('dart2js:noInline')
  static Preset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Preset>(create);
  static Preset? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Channel> get channels => $_getList(4);
}

/// Channel message
class Channel extends $pb.GeneratedMessage {
  factory Channel({
    $core.String? key,
    $core.String? name,
    ChannelType? type,
    BaseControl? volume,
    BaseControl? pan,
    $core.Iterable<FX>? fxs,
    $core.Iterable<Instrument>? instruments,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (name != null) {
      $result.name = name;
    }
    if (type != null) {
      $result.type = type;
    }
    if (volume != null) {
      $result.volume = volume;
    }
    if (pan != null) {
      $result.pan = pan;
    }
    if (fxs != null) {
      $result.fxs.addAll(fxs);
    }
    if (instruments != null) {
      $result.instruments.addAll(instruments);
    }
    return $result;
  }
  Channel._() : super();
  factory Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Channel', package: const $pb.PackageName(_omitMessageNames ? '' : 'kitPreset.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..e<ChannelType>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChannelType.CHANNEL_TYPE_UNSPECIFIED, valueOf: ChannelType.valueOf, enumValues: ChannelType.values)
    ..aOM<BaseControl>(4, _omitFieldNames ? '' : 'volume', subBuilder: BaseControl.create)
    ..aOM<BaseControl>(5, _omitFieldNames ? '' : 'pan', subBuilder: BaseControl.create)
    ..pc<FX>(6, _omitFieldNames ? '' : 'fxs', $pb.PbFieldType.PM, subBuilder: FX.create)
    ..pc<Instrument>(7, _omitFieldNames ? '' : 'instruments', $pb.PbFieldType.PM, subBuilder: Instrument.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Channel clone() => Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Channel copyWith(void Function(Channel) updates) => super.copyWith((message) => updates(message as Channel)) as Channel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Channel create() => Channel._();
  Channel createEmptyInstance() => create();
  static $pb.PbList<Channel> createRepeated() => $pb.PbList<Channel>();
  @$core.pragma('dart2js:noInline')
  static Channel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Channel>(create);
  static Channel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  ChannelType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(ChannelType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  BaseControl get volume => $_getN(3);
  @$pb.TagNumber(4)
  set volume(BaseControl v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasVolume() => $_has(3);
  @$pb.TagNumber(4)
  void clearVolume() => clearField(4);
  @$pb.TagNumber(4)
  BaseControl ensureVolume() => $_ensure(3);

  @$pb.TagNumber(5)
  BaseControl get pan => $_getN(4);
  @$pb.TagNumber(5)
  set pan(BaseControl v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPan() => $_has(4);
  @$pb.TagNumber(5)
  void clearPan() => clearField(5);
  @$pb.TagNumber(5)
  BaseControl ensurePan() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<FX> get fxs => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<Instrument> get instruments => $_getList(6);
}

/// Instrument message
class Instrument extends $pb.GeneratedMessage {
  factory Instrument({
    $core.String? key,
    $core.String? name,
    BaseControl? volume,
    BaseControl? pan,
    $core.Iterable<FX>? tunes,
    $core.Iterable<Layer>? layers,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (name != null) {
      $result.name = name;
    }
    if (volume != null) {
      $result.volume = volume;
    }
    if (pan != null) {
      $result.pan = pan;
    }
    if (tunes != null) {
      $result.tunes.addAll(tunes);
    }
    if (layers != null) {
      $result.layers.addAll(layers);
    }
    return $result;
  }
  Instrument._() : super();
  factory Instrument.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Instrument.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Instrument', package: const $pb.PackageName(_omitMessageNames ? '' : 'kitPreset.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<BaseControl>(3, _omitFieldNames ? '' : 'volume', subBuilder: BaseControl.create)
    ..aOM<BaseControl>(4, _omitFieldNames ? '' : 'pan', subBuilder: BaseControl.create)
    ..pc<FX>(5, _omitFieldNames ? '' : 'tunes', $pb.PbFieldType.PM, subBuilder: FX.create)
    ..pc<Layer>(6, _omitFieldNames ? '' : 'layers', $pb.PbFieldType.PM, subBuilder: Layer.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Instrument clone() => Instrument()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Instrument copyWith(void Function(Instrument) updates) => super.copyWith((message) => updates(message as Instrument)) as Instrument;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Instrument create() => Instrument._();
  Instrument createEmptyInstance() => create();
  static $pb.PbList<Instrument> createRepeated() => $pb.PbList<Instrument>();
  @$core.pragma('dart2js:noInline')
  static Instrument getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Instrument>(create);
  static Instrument? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  BaseControl get volume => $_getN(2);
  @$pb.TagNumber(3)
  set volume(BaseControl v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVolume() => $_has(2);
  @$pb.TagNumber(3)
  void clearVolume() => clearField(3);
  @$pb.TagNumber(3)
  BaseControl ensureVolume() => $_ensure(2);

  @$pb.TagNumber(4)
  BaseControl get pan => $_getN(3);
  @$pb.TagNumber(4)
  set pan(BaseControl v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPan() => $_has(3);
  @$pb.TagNumber(4)
  void clearPan() => clearField(4);
  @$pb.TagNumber(4)
  BaseControl ensurePan() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<FX> get tunes => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<Layer> get layers => $_getList(5);
}

/// Layer message
class Layer extends $pb.GeneratedMessage {
  factory Layer({
    $core.String? key,
    $core.String? name,
    BaseControl? volume,
    BaseControl? pan,
    $core.Iterable<FX>? fxs,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (name != null) {
      $result.name = name;
    }
    if (volume != null) {
      $result.volume = volume;
    }
    if (pan != null) {
      $result.pan = pan;
    }
    if (fxs != null) {
      $result.fxs.addAll(fxs);
    }
    return $result;
  }
  Layer._() : super();
  factory Layer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Layer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Layer', package: const $pb.PackageName(_omitMessageNames ? '' : 'kitPreset.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<BaseControl>(3, _omitFieldNames ? '' : 'volume', subBuilder: BaseControl.create)
    ..aOM<BaseControl>(4, _omitFieldNames ? '' : 'pan', subBuilder: BaseControl.create)
    ..pc<FX>(5, _omitFieldNames ? '' : 'fxs', $pb.PbFieldType.PM, subBuilder: FX.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Layer clone() => Layer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Layer copyWith(void Function(Layer) updates) => super.copyWith((message) => updates(message as Layer)) as Layer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Layer create() => Layer._();
  Layer createEmptyInstance() => create();
  static $pb.PbList<Layer> createRepeated() => $pb.PbList<Layer>();
  @$core.pragma('dart2js:noInline')
  static Layer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Layer>(create);
  static Layer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  BaseControl get volume => $_getN(2);
  @$pb.TagNumber(3)
  set volume(BaseControl v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVolume() => $_has(2);
  @$pb.TagNumber(3)
  void clearVolume() => clearField(3);
  @$pb.TagNumber(3)
  BaseControl ensureVolume() => $_ensure(2);

  @$pb.TagNumber(4)
  BaseControl get pan => $_getN(3);
  @$pb.TagNumber(4)
  set pan(BaseControl v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPan() => $_has(3);
  @$pb.TagNumber(4)
  void clearPan() => clearField(4);
  @$pb.TagNumber(4)
  BaseControl ensurePan() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<FX> get fxs => $_getList(4);
}

/// Base control message
class BaseControl extends $pb.GeneratedMessage {
  factory BaseControl({
    $core.String? key,
    $core.String? name,
    $core.double? value,
    $core.double? min,
    $core.double? max,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (name != null) {
      $result.name = name;
    }
    if (value != null) {
      $result.value = value;
    }
    if (min != null) {
      $result.min = min;
    }
    if (max != null) {
      $result.max = max;
    }
    return $result;
  }
  BaseControl._() : super();
  factory BaseControl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseControl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BaseControl', package: const $pb.PackageName(_omitMessageNames ? '' : 'kitPreset.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'min', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'max', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseControl clone() => BaseControl()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseControl copyWith(void Function(BaseControl) updates) => super.copyWith((message) => updates(message as BaseControl)) as BaseControl;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseControl create() => BaseControl._();
  BaseControl createEmptyInstance() => create();
  static $pb.PbList<BaseControl> createRepeated() => $pb.PbList<BaseControl>();
  @$core.pragma('dart2js:noInline')
  static BaseControl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseControl>(create);
  static BaseControl? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get min => $_getN(3);
  @$pb.TagNumber(4)
  set min($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMin() => $_has(3);
  @$pb.TagNumber(4)
  void clearMin() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get max => $_getN(4);
  @$pb.TagNumber(5)
  set max($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMax() => $_has(4);
  @$pb.TagNumber(5)
  void clearMax() => clearField(5);
}

/// FX message
class FX extends $pb.GeneratedMessage {
  factory FX({
    $core.String? key,
    $core.String? name,
    $core.int? order,
    $core.Iterable<FXParam>? params,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (name != null) {
      $result.name = name;
    }
    if (order != null) {
      $result.order = order;
    }
    if (params != null) {
      $result.params.addAll(params);
    }
    return $result;
  }
  FX._() : super();
  factory FX.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FX.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FX', package: const $pb.PackageName(_omitMessageNames ? '' : 'kitPreset.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..pc<FXParam>(4, _omitFieldNames ? '' : 'params', $pb.PbFieldType.PM, subBuilder: FXParam.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FX clone() => FX()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FX copyWith(void Function(FX) updates) => super.copyWith((message) => updates(message as FX)) as FX;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FX create() => FX._();
  FX createEmptyInstance() => create();
  static $pb.PbList<FX> createRepeated() => $pb.PbList<FX>();
  @$core.pragma('dart2js:noInline')
  static FX getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FX>(create);
  static FX? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<FXParam> get params => $_getList(3);
}

/// FX Parameter message
class FXParam extends $pb.GeneratedMessage {
  factory FXParam({
    $core.String? key,
    $core.String? name,
    $core.int? order,
    FXParamType? type,
    $core.double? min,
    $core.double? max,
    $core.int? divisions,
    $core.Iterable<FXParamDiscreteVal>? discreteVals,
    $core.double? value,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (name != null) {
      $result.name = name;
    }
    if (order != null) {
      $result.order = order;
    }
    if (type != null) {
      $result.type = type;
    }
    if (min != null) {
      $result.min = min;
    }
    if (max != null) {
      $result.max = max;
    }
    if (divisions != null) {
      $result.divisions = divisions;
    }
    if (discreteVals != null) {
      $result.discreteVals.addAll(discreteVals);
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  FXParam._() : super();
  factory FXParam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FXParam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FXParam', package: const $pb.PackageName(_omitMessageNames ? '' : 'kitPreset.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..e<FXParamType>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: FXParamType.FX_PARAM_TYPE_UNSPECIFIED, valueOf: FXParamType.valueOf, enumValues: FXParamType.values)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'min', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'max', $pb.PbFieldType.OD)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'divisions', $pb.PbFieldType.O3)
    ..pc<FXParamDiscreteVal>(8, _omitFieldNames ? '' : 'discreteVals', $pb.PbFieldType.PM, subBuilder: FXParamDiscreteVal.create)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FXParam clone() => FXParam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FXParam copyWith(void Function(FXParam) updates) => super.copyWith((message) => updates(message as FXParam)) as FXParam;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FXParam create() => FXParam._();
  FXParam createEmptyInstance() => create();
  static $pb.PbList<FXParam> createRepeated() => $pb.PbList<FXParam>();
  @$core.pragma('dart2js:noInline')
  static FXParam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FXParam>(create);
  static FXParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);

  @$pb.TagNumber(4)
  FXParamType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(FXParamType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get min => $_getN(4);
  @$pb.TagNumber(5)
  set min($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMin() => $_has(4);
  @$pb.TagNumber(5)
  void clearMin() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get max => $_getN(5);
  @$pb.TagNumber(6)
  set max($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMax() => $_has(5);
  @$pb.TagNumber(6)
  void clearMax() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get divisions => $_getIZ(6);
  @$pb.TagNumber(7)
  set divisions($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDivisions() => $_has(6);
  @$pb.TagNumber(7)
  void clearDivisions() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<FXParamDiscreteVal> get discreteVals => $_getList(7);

  @$pb.TagNumber(9)
  $core.double get value => $_getN(8);
  @$pb.TagNumber(9)
  set value($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearValue() => clearField(9);
}

/// FX Parameter Discrete Value message
class FXParamDiscreteVal extends $pb.GeneratedMessage {
  factory FXParamDiscreteVal({
    $core.String? name,
    $core.double? val,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (val != null) {
      $result.val = val;
    }
    return $result;
  }
  FXParamDiscreteVal._() : super();
  factory FXParamDiscreteVal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FXParamDiscreteVal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FXParamDiscreteVal', package: const $pb.PackageName(_omitMessageNames ? '' : 'kitPreset.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FXParamDiscreteVal clone() => FXParamDiscreteVal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FXParamDiscreteVal copyWith(void Function(FXParamDiscreteVal) updates) => super.copyWith((message) => updates(message as FXParamDiscreteVal)) as FXParamDiscreteVal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FXParamDiscreteVal create() => FXParamDiscreteVal._();
  FXParamDiscreteVal createEmptyInstance() => create();
  static $pb.PbList<FXParamDiscreteVal> createRepeated() => $pb.PbList<FXParamDiscreteVal>();
  @$core.pragma('dart2js:noInline')
  static FXParamDiscreteVal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FXParamDiscreteVal>(create);
  static FXParamDiscreteVal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get val => $_getN(1);
  @$pb.TagNumber(2)
  set val($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearVal() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
