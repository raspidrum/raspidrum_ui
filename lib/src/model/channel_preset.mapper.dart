// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'channel_preset.dart';

class ChannelTypeMapper extends EnumMapper<ChannelType> {
  ChannelTypeMapper._();

  static ChannelTypeMapper? _instance;
  static ChannelTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChannelTypeMapper._());
    }
    return _instance!;
  }

  static ChannelType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ChannelType decode(dynamic value) {
    switch (value) {
      case r'unspecified':
        return ChannelType.unspecified;
      case r'global':
        return ChannelType.global;
      case r'sampler':
        return ChannelType.sampler;
      case r'instrument':
        return ChannelType.instrument;
      case r'mixer':
        return ChannelType.mixer;
      case r'player':
        return ChannelType.player;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ChannelType self) {
    switch (self) {
      case ChannelType.unspecified:
        return r'unspecified';
      case ChannelType.global:
        return r'global';
      case ChannelType.sampler:
        return r'sampler';
      case ChannelType.instrument:
        return r'instrument';
      case ChannelType.mixer:
        return r'mixer';
      case ChannelType.player:
        return r'player';
    }
  }
}

extension ChannelTypeMapperExtension on ChannelType {
  String toValue() {
    ChannelTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ChannelType>(this) as String;
  }
}

class FXParamTypeMapper extends EnumMapper<FXParamType> {
  FXParamTypeMapper._();

  static FXParamTypeMapper? _instance;
  static FXParamTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FXParamTypeMapper._());
    }
    return _instance!;
  }

  static FXParamType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  FXParamType decode(dynamic value) {
    switch (value) {
      case r'unspecified':
        return FXParamType.unspecified;
      case r'range':
        return FXParamType.range;
      case r'fixed':
        return FXParamType.fixed;
      case r'boolean':
        return FXParamType.boolean;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(FXParamType self) {
    switch (self) {
      case FXParamType.unspecified:
        return r'unspecified';
      case FXParamType.range:
        return r'range';
      case FXParamType.fixed:
        return r'fixed';
      case FXParamType.boolean:
        return r'boolean';
    }
  }
}

extension FXParamTypeMapperExtension on FXParamType {
  String toValue() {
    FXParamTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<FXParamType>(this) as String;
  }
}

class PresetMapper extends ClassMapperBase<Preset> {
  PresetMapper._();

  static PresetMapper? _instance;
  static PresetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PresetMapper._());
      ChannelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Preset';

  static String _$key(Preset v) => v.key;
  static const Field<Preset, String> _f$key = Field('key', _$key);
  static String _$name(Preset v) => v.name;
  static const Field<Preset, String> _f$name = Field('name', _$name);
  static String? _$description(Preset v) => v.description;
  static const Field<Preset, String> _f$description =
      Field('description', _$description, opt: true);
  static List<Channel>? _$channels(Preset v) => v.channels;
  static const Field<Preset, List<Channel>> _f$channels =
      Field('channels', _$channels, opt: true);

  @override
  final MappableFields<Preset> fields = const {
    #key: _f$key,
    #name: _f$name,
    #description: _f$description,
    #channels: _f$channels,
  };

  static Preset _instantiate(DecodingData data) {
    return Preset(
        key: data.dec(_f$key),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        channels: data.dec(_f$channels));
  }

  @override
  final Function instantiate = _instantiate;

  static Preset fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Preset>(map);
  }

  static Preset fromJson(String json) {
    return ensureInitialized().decodeJson<Preset>(json);
  }
}

mixin PresetMappable {
  String toJson() {
    return PresetMapper.ensureInitialized().encodeJson<Preset>(this as Preset);
  }

  Map<String, dynamic> toMap() {
    return PresetMapper.ensureInitialized().encodeMap<Preset>(this as Preset);
  }

  PresetCopyWith<Preset, Preset, Preset> get copyWith =>
      _PresetCopyWithImpl<Preset, Preset>(this as Preset, $identity, $identity);
  @override
  String toString() {
    return PresetMapper.ensureInitialized().stringifyValue(this as Preset);
  }

  @override
  bool operator ==(Object other) {
    return PresetMapper.ensureInitialized().equalsValue(this as Preset, other);
  }

  @override
  int get hashCode {
    return PresetMapper.ensureInitialized().hashValue(this as Preset);
  }
}

extension PresetValueCopy<$R, $Out> on ObjectCopyWith<$R, Preset, $Out> {
  PresetCopyWith<$R, Preset, $Out> get $asPreset =>
      $base.as((v, t, t2) => _PresetCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PresetCopyWith<$R, $In extends Preset, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Channel, ChannelCopyWith<$R, Channel, Channel>>?
      get channels;
  $R call(
      {String? key,
      String? name,
      String? description,
      List<Channel>? channels});
  PresetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PresetCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Preset, $Out>
    implements PresetCopyWith<$R, Preset, $Out> {
  _PresetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Preset> $mapper = PresetMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Channel, ChannelCopyWith<$R, Channel, Channel>>?
      get channels => $value.channels != null
          ? ListCopyWith($value.channels!, (v, t) => v.copyWith.$chain(t),
              (v) => call(channels: v))
          : null;
  @override
  $R call(
          {String? key,
          String? name,
          Object? description = $none,
          Object? channels = $none}) =>
      $apply(FieldCopyWithData({
        if (key != null) #key: key,
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (channels != $none) #channels: channels
      }));
  @override
  Preset $make(CopyWithData data) => Preset(
      key: data.get(#key, or: $value.key),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      channels: data.get(#channels, or: $value.channels));

  @override
  PresetCopyWith<$R2, Preset, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PresetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChannelMapper extends ClassMapperBase<Channel> {
  ChannelMapper._();

  static ChannelMapper? _instance;
  static ChannelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChannelMapper._());
      ChannelTypeMapper.ensureInitialized();
      BaseControlMapper.ensureInitialized();
      FXMapper.ensureInitialized();
      InstrumentMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Channel';

  static String _$key(Channel v) => v.key;
  static const Field<Channel, String> _f$key = Field('key', _$key);
  static String _$name(Channel v) => v.name;
  static const Field<Channel, String> _f$name = Field('name', _$name);
  static ChannelType _$type(Channel v) => v.type;
  static const Field<Channel, ChannelType> _f$type = Field('type', _$type);
  static BaseControl _$volume(Channel v) => v.volume;
  static const Field<Channel, BaseControl> _f$volume =
      Field('volume', _$volume);
  static BaseControl? _$pan(Channel v) => v.pan;
  static const Field<Channel, BaseControl> _f$pan =
      Field('pan', _$pan, opt: true);
  static List<FX>? _$fxs(Channel v) => v.fxs;
  static const Field<Channel, List<FX>> _f$fxs = Field('fxs', _$fxs, opt: true);
  static List<Instrument>? _$instruments(Channel v) => v.instruments;
  static const Field<Channel, List<Instrument>> _f$instruments =
      Field('instruments', _$instruments, opt: true);

  @override
  final MappableFields<Channel> fields = const {
    #key: _f$key,
    #name: _f$name,
    #type: _f$type,
    #volume: _f$volume,
    #pan: _f$pan,
    #fxs: _f$fxs,
    #instruments: _f$instruments,
  };

  static Channel _instantiate(DecodingData data) {
    return Channel(
        key: data.dec(_f$key),
        name: data.dec(_f$name),
        type: data.dec(_f$type),
        volume: data.dec(_f$volume),
        pan: data.dec(_f$pan),
        fxs: data.dec(_f$fxs),
        instruments: data.dec(_f$instruments));
  }

  @override
  final Function instantiate = _instantiate;

  static Channel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Channel>(map);
  }

  static Channel fromJson(String json) {
    return ensureInitialized().decodeJson<Channel>(json);
  }
}

mixin ChannelMappable {
  String toJson() {
    return ChannelMapper.ensureInitialized()
        .encodeJson<Channel>(this as Channel);
  }

  Map<String, dynamic> toMap() {
    return ChannelMapper.ensureInitialized()
        .encodeMap<Channel>(this as Channel);
  }

  ChannelCopyWith<Channel, Channel, Channel> get copyWith =>
      _ChannelCopyWithImpl<Channel, Channel>(
          this as Channel, $identity, $identity);
  @override
  String toString() {
    return ChannelMapper.ensureInitialized().stringifyValue(this as Channel);
  }

  @override
  bool operator ==(Object other) {
    return ChannelMapper.ensureInitialized()
        .equalsValue(this as Channel, other);
  }

  @override
  int get hashCode {
    return ChannelMapper.ensureInitialized().hashValue(this as Channel);
  }
}

extension ChannelValueCopy<$R, $Out> on ObjectCopyWith<$R, Channel, $Out> {
  ChannelCopyWith<$R, Channel, $Out> get $asChannel =>
      $base.as((v, t, t2) => _ChannelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChannelCopyWith<$R, $In extends Channel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BaseControlCopyWith<$R, BaseControl, BaseControl> get volume;
  BaseControlCopyWith<$R, BaseControl, BaseControl>? get pan;
  ListCopyWith<$R, FX, FXCopyWith<$R, FX, FX>>? get fxs;
  ListCopyWith<$R, Instrument, InstrumentCopyWith<$R, Instrument, Instrument>>?
      get instruments;
  $R call(
      {String? key,
      String? name,
      ChannelType? type,
      BaseControl? volume,
      BaseControl? pan,
      List<FX>? fxs,
      List<Instrument>? instruments});
  ChannelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChannelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Channel, $Out>
    implements ChannelCopyWith<$R, Channel, $Out> {
  _ChannelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Channel> $mapper =
      ChannelMapper.ensureInitialized();
  @override
  BaseControlCopyWith<$R, BaseControl, BaseControl> get volume =>
      $value.volume.copyWith.$chain((v) => call(volume: v));
  @override
  BaseControlCopyWith<$R, BaseControl, BaseControl>? get pan =>
      $value.pan?.copyWith.$chain((v) => call(pan: v));
  @override
  ListCopyWith<$R, FX, FXCopyWith<$R, FX, FX>>? get fxs => $value.fxs != null
      ? ListCopyWith(
          $value.fxs!, (v, t) => v.copyWith.$chain(t), (v) => call(fxs: v))
      : null;
  @override
  ListCopyWith<$R, Instrument, InstrumentCopyWith<$R, Instrument, Instrument>>?
      get instruments => $value.instruments != null
          ? ListCopyWith($value.instruments!, (v, t) => v.copyWith.$chain(t),
              (v) => call(instruments: v))
          : null;
  @override
  $R call(
          {String? key,
          String? name,
          ChannelType? type,
          BaseControl? volume,
          Object? pan = $none,
          Object? fxs = $none,
          Object? instruments = $none}) =>
      $apply(FieldCopyWithData({
        if (key != null) #key: key,
        if (name != null) #name: name,
        if (type != null) #type: type,
        if (volume != null) #volume: volume,
        if (pan != $none) #pan: pan,
        if (fxs != $none) #fxs: fxs,
        if (instruments != $none) #instruments: instruments
      }));
  @override
  Channel $make(CopyWithData data) => Channel(
      key: data.get(#key, or: $value.key),
      name: data.get(#name, or: $value.name),
      type: data.get(#type, or: $value.type),
      volume: data.get(#volume, or: $value.volume),
      pan: data.get(#pan, or: $value.pan),
      fxs: data.get(#fxs, or: $value.fxs),
      instruments: data.get(#instruments, or: $value.instruments));

  @override
  ChannelCopyWith<$R2, Channel, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChannelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BaseControlMapper extends ClassMapperBase<BaseControl> {
  BaseControlMapper._();

  static BaseControlMapper? _instance;
  static BaseControlMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BaseControlMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BaseControl';

  static String _$key(BaseControl v) => v.key;
  static const Field<BaseControl, String> _f$key = Field('key', _$key);
  static String _$name(BaseControl v) => v.name;
  static const Field<BaseControl, String> _f$name = Field('name', _$name);
  static double _$value(BaseControl v) => v.value;
  static const Field<BaseControl, double> _f$value = Field('value', _$value);
  static double? _$min(BaseControl v) => v.min;
  static const Field<BaseControl, double> _f$min =
      Field('min', _$min, opt: true);
  static double? _$max(BaseControl v) => v.max;
  static const Field<BaseControl, double> _f$max =
      Field('max', _$max, opt: true);

  @override
  final MappableFields<BaseControl> fields = const {
    #key: _f$key,
    #name: _f$name,
    #value: _f$value,
    #min: _f$min,
    #max: _f$max,
  };

  static BaseControl _instantiate(DecodingData data) {
    return BaseControl(
        key: data.dec(_f$key),
        name: data.dec(_f$name),
        value: data.dec(_f$value),
        min: data.dec(_f$min),
        max: data.dec(_f$max));
  }

  @override
  final Function instantiate = _instantiate;

  static BaseControl fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BaseControl>(map);
  }

  static BaseControl fromJson(String json) {
    return ensureInitialized().decodeJson<BaseControl>(json);
  }
}

mixin BaseControlMappable {
  String toJson() {
    return BaseControlMapper.ensureInitialized()
        .encodeJson<BaseControl>(this as BaseControl);
  }

  Map<String, dynamic> toMap() {
    return BaseControlMapper.ensureInitialized()
        .encodeMap<BaseControl>(this as BaseControl);
  }

  BaseControlCopyWith<BaseControl, BaseControl, BaseControl> get copyWith =>
      _BaseControlCopyWithImpl<BaseControl, BaseControl>(
          this as BaseControl, $identity, $identity);
  @override
  String toString() {
    return BaseControlMapper.ensureInitialized()
        .stringifyValue(this as BaseControl);
  }

  @override
  bool operator ==(Object other) {
    return BaseControlMapper.ensureInitialized()
        .equalsValue(this as BaseControl, other);
  }

  @override
  int get hashCode {
    return BaseControlMapper.ensureInitialized().hashValue(this as BaseControl);
  }
}

extension BaseControlValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BaseControl, $Out> {
  BaseControlCopyWith<$R, BaseControl, $Out> get $asBaseControl =>
      $base.as((v, t, t2) => _BaseControlCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BaseControlCopyWith<$R, $In extends BaseControl, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? key, String? name, double? value, double? min, double? max});
  BaseControlCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BaseControlCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BaseControl, $Out>
    implements BaseControlCopyWith<$R, BaseControl, $Out> {
  _BaseControlCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BaseControl> $mapper =
      BaseControlMapper.ensureInitialized();
  @override
  $R call(
          {String? key,
          String? name,
          double? value,
          Object? min = $none,
          Object? max = $none}) =>
      $apply(FieldCopyWithData({
        if (key != null) #key: key,
        if (name != null) #name: name,
        if (value != null) #value: value,
        if (min != $none) #min: min,
        if (max != $none) #max: max
      }));
  @override
  BaseControl $make(CopyWithData data) => BaseControl(
      key: data.get(#key, or: $value.key),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value),
      min: data.get(#min, or: $value.min),
      max: data.get(#max, or: $value.max));

  @override
  BaseControlCopyWith<$R2, BaseControl, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BaseControlCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FXMapper extends ClassMapperBase<FX> {
  FXMapper._();

  static FXMapper? _instance;
  static FXMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FXMapper._());
      FXParamMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FX';

  static String _$key(FX v) => v.key;
  static const Field<FX, String> _f$key = Field('key', _$key);
  static String _$name(FX v) => v.name;
  static const Field<FX, String> _f$name = Field('name', _$name);
  static int _$order(FX v) => v.order;
  static const Field<FX, int> _f$order = Field('order', _$order);
  static List<FXParam> _$params(FX v) => v.params;
  static const Field<FX, List<FXParam>> _f$params = Field('params', _$params);

  @override
  final MappableFields<FX> fields = const {
    #key: _f$key,
    #name: _f$name,
    #order: _f$order,
    #params: _f$params,
  };

  static FX _instantiate(DecodingData data) {
    return FX(
        key: data.dec(_f$key),
        name: data.dec(_f$name),
        order: data.dec(_f$order),
        params: data.dec(_f$params));
  }

  @override
  final Function instantiate = _instantiate;

  static FX fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FX>(map);
  }

  static FX fromJson(String json) {
    return ensureInitialized().decodeJson<FX>(json);
  }
}

mixin FXMappable {
  String toJson() {
    return FXMapper.ensureInitialized().encodeJson<FX>(this as FX);
  }

  Map<String, dynamic> toMap() {
    return FXMapper.ensureInitialized().encodeMap<FX>(this as FX);
  }

  FXCopyWith<FX, FX, FX> get copyWith =>
      _FXCopyWithImpl<FX, FX>(this as FX, $identity, $identity);
  @override
  String toString() {
    return FXMapper.ensureInitialized().stringifyValue(this as FX);
  }

  @override
  bool operator ==(Object other) {
    return FXMapper.ensureInitialized().equalsValue(this as FX, other);
  }

  @override
  int get hashCode {
    return FXMapper.ensureInitialized().hashValue(this as FX);
  }
}

extension FXValueCopy<$R, $Out> on ObjectCopyWith<$R, FX, $Out> {
  FXCopyWith<$R, FX, $Out> get $asFX =>
      $base.as((v, t, t2) => _FXCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FXCopyWith<$R, $In extends FX, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, FXParam, FXParamCopyWith<$R, FXParam, FXParam>> get params;
  $R call({String? key, String? name, int? order, List<FXParam>? params});
  FXCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FXCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, FX, $Out>
    implements FXCopyWith<$R, FX, $Out> {
  _FXCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FX> $mapper = FXMapper.ensureInitialized();
  @override
  ListCopyWith<$R, FXParam, FXParamCopyWith<$R, FXParam, FXParam>> get params =>
      ListCopyWith($value.params, (v, t) => v.copyWith.$chain(t),
          (v) => call(params: v));
  @override
  $R call({String? key, String? name, int? order, List<FXParam>? params}) =>
      $apply(FieldCopyWithData({
        if (key != null) #key: key,
        if (name != null) #name: name,
        if (order != null) #order: order,
        if (params != null) #params: params
      }));
  @override
  FX $make(CopyWithData data) => FX(
      key: data.get(#key, or: $value.key),
      name: data.get(#name, or: $value.name),
      order: data.get(#order, or: $value.order),
      params: data.get(#params, or: $value.params));

  @override
  FXCopyWith<$R2, FX, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FXCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FXParamMapper extends ClassMapperBase<FXParam> {
  FXParamMapper._();

  static FXParamMapper? _instance;
  static FXParamMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FXParamMapper._());
      FXParamTypeMapper.ensureInitialized();
      FXParamDiscreteValMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FXParam';

  static String _$key(FXParam v) => v.key;
  static const Field<FXParam, String> _f$key = Field('key', _$key);
  static String _$name(FXParam v) => v.name;
  static const Field<FXParam, String> _f$name = Field('name', _$name);
  static int _$order(FXParam v) => v.order;
  static const Field<FXParam, int> _f$order = Field('order', _$order);
  static FXParamType _$type(FXParam v) => v.type;
  static const Field<FXParam, FXParamType> _f$type = Field('type', _$type);
  static double? _$min(FXParam v) => v.min;
  static const Field<FXParam, double> _f$min = Field('min', _$min, opt: true);
  static double? _$max(FXParam v) => v.max;
  static const Field<FXParam, double> _f$max = Field('max', _$max, opt: true);
  static int? _$divisions(FXParam v) => v.divisions;
  static const Field<FXParam, int> _f$divisions =
      Field('divisions', _$divisions, opt: true);
  static List<FXParamDiscreteVal>? _$discreteVals(FXParam v) => v.discreteVals;
  static const Field<FXParam, List<FXParamDiscreteVal>> _f$discreteVals =
      Field('discreteVals', _$discreteVals, opt: true);
  static double _$value(FXParam v) => v.value;
  static const Field<FXParam, double> _f$value = Field('value', _$value);

  @override
  final MappableFields<FXParam> fields = const {
    #key: _f$key,
    #name: _f$name,
    #order: _f$order,
    #type: _f$type,
    #min: _f$min,
    #max: _f$max,
    #divisions: _f$divisions,
    #discreteVals: _f$discreteVals,
    #value: _f$value,
  };

  static FXParam _instantiate(DecodingData data) {
    return FXParam(
        key: data.dec(_f$key),
        name: data.dec(_f$name),
        order: data.dec(_f$order),
        type: data.dec(_f$type),
        min: data.dec(_f$min),
        max: data.dec(_f$max),
        divisions: data.dec(_f$divisions),
        discreteVals: data.dec(_f$discreteVals),
        value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static FXParam fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FXParam>(map);
  }

  static FXParam fromJson(String json) {
    return ensureInitialized().decodeJson<FXParam>(json);
  }
}

mixin FXParamMappable {
  String toJson() {
    return FXParamMapper.ensureInitialized()
        .encodeJson<FXParam>(this as FXParam);
  }

  Map<String, dynamic> toMap() {
    return FXParamMapper.ensureInitialized()
        .encodeMap<FXParam>(this as FXParam);
  }

  FXParamCopyWith<FXParam, FXParam, FXParam> get copyWith =>
      _FXParamCopyWithImpl<FXParam, FXParam>(
          this as FXParam, $identity, $identity);
  @override
  String toString() {
    return FXParamMapper.ensureInitialized().stringifyValue(this as FXParam);
  }

  @override
  bool operator ==(Object other) {
    return FXParamMapper.ensureInitialized()
        .equalsValue(this as FXParam, other);
  }

  @override
  int get hashCode {
    return FXParamMapper.ensureInitialized().hashValue(this as FXParam);
  }
}

extension FXParamValueCopy<$R, $Out> on ObjectCopyWith<$R, FXParam, $Out> {
  FXParamCopyWith<$R, FXParam, $Out> get $asFXParam =>
      $base.as((v, t, t2) => _FXParamCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FXParamCopyWith<$R, $In extends FXParam, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      FXParamDiscreteVal,
      FXParamDiscreteValCopyWith<$R, FXParamDiscreteVal,
          FXParamDiscreteVal>>? get discreteVals;
  $R call(
      {String? key,
      String? name,
      int? order,
      FXParamType? type,
      double? min,
      double? max,
      int? divisions,
      List<FXParamDiscreteVal>? discreteVals,
      double? value});
  FXParamCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FXParamCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FXParam, $Out>
    implements FXParamCopyWith<$R, FXParam, $Out> {
  _FXParamCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FXParam> $mapper =
      FXParamMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      FXParamDiscreteVal,
      FXParamDiscreteValCopyWith<$R, FXParamDiscreteVal,
          FXParamDiscreteVal>>? get discreteVals => $value.discreteVals != null
      ? ListCopyWith($value.discreteVals!, (v, t) => v.copyWith.$chain(t),
          (v) => call(discreteVals: v))
      : null;
  @override
  $R call(
          {String? key,
          String? name,
          int? order,
          FXParamType? type,
          Object? min = $none,
          Object? max = $none,
          Object? divisions = $none,
          Object? discreteVals = $none,
          double? value}) =>
      $apply(FieldCopyWithData({
        if (key != null) #key: key,
        if (name != null) #name: name,
        if (order != null) #order: order,
        if (type != null) #type: type,
        if (min != $none) #min: min,
        if (max != $none) #max: max,
        if (divisions != $none) #divisions: divisions,
        if (discreteVals != $none) #discreteVals: discreteVals,
        if (value != null) #value: value
      }));
  @override
  FXParam $make(CopyWithData data) => FXParam(
      key: data.get(#key, or: $value.key),
      name: data.get(#name, or: $value.name),
      order: data.get(#order, or: $value.order),
      type: data.get(#type, or: $value.type),
      min: data.get(#min, or: $value.min),
      max: data.get(#max, or: $value.max),
      divisions: data.get(#divisions, or: $value.divisions),
      discreteVals: data.get(#discreteVals, or: $value.discreteVals),
      value: data.get(#value, or: $value.value));

  @override
  FXParamCopyWith<$R2, FXParam, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FXParamCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FXParamDiscreteValMapper extends ClassMapperBase<FXParamDiscreteVal> {
  FXParamDiscreteValMapper._();

  static FXParamDiscreteValMapper? _instance;
  static FXParamDiscreteValMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FXParamDiscreteValMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FXParamDiscreteVal';

  static String? _$name(FXParamDiscreteVal v) => v.name;
  static const Field<FXParamDiscreteVal, String> _f$name =
      Field('name', _$name, opt: true);
  static double _$val(FXParamDiscreteVal v) => v.val;
  static const Field<FXParamDiscreteVal, double> _f$val = Field('val', _$val);

  @override
  final MappableFields<FXParamDiscreteVal> fields = const {
    #name: _f$name,
    #val: _f$val,
  };

  static FXParamDiscreteVal _instantiate(DecodingData data) {
    return FXParamDiscreteVal(name: data.dec(_f$name), val: data.dec(_f$val));
  }

  @override
  final Function instantiate = _instantiate;

  static FXParamDiscreteVal fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FXParamDiscreteVal>(map);
  }

  static FXParamDiscreteVal fromJson(String json) {
    return ensureInitialized().decodeJson<FXParamDiscreteVal>(json);
  }
}

mixin FXParamDiscreteValMappable {
  String toJson() {
    return FXParamDiscreteValMapper.ensureInitialized()
        .encodeJson<FXParamDiscreteVal>(this as FXParamDiscreteVal);
  }

  Map<String, dynamic> toMap() {
    return FXParamDiscreteValMapper.ensureInitialized()
        .encodeMap<FXParamDiscreteVal>(this as FXParamDiscreteVal);
  }

  FXParamDiscreteValCopyWith<FXParamDiscreteVal, FXParamDiscreteVal,
          FXParamDiscreteVal>
      get copyWith => _FXParamDiscreteValCopyWithImpl<FXParamDiscreteVal,
          FXParamDiscreteVal>(this as FXParamDiscreteVal, $identity, $identity);
  @override
  String toString() {
    return FXParamDiscreteValMapper.ensureInitialized()
        .stringifyValue(this as FXParamDiscreteVal);
  }

  @override
  bool operator ==(Object other) {
    return FXParamDiscreteValMapper.ensureInitialized()
        .equalsValue(this as FXParamDiscreteVal, other);
  }

  @override
  int get hashCode {
    return FXParamDiscreteValMapper.ensureInitialized()
        .hashValue(this as FXParamDiscreteVal);
  }
}

extension FXParamDiscreteValValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FXParamDiscreteVal, $Out> {
  FXParamDiscreteValCopyWith<$R, FXParamDiscreteVal, $Out>
      get $asFXParamDiscreteVal => $base.as(
          (v, t, t2) => _FXParamDiscreteValCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FXParamDiscreteValCopyWith<$R, $In extends FXParamDiscreteVal,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, double? val});
  FXParamDiscreteValCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FXParamDiscreteValCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FXParamDiscreteVal, $Out>
    implements FXParamDiscreteValCopyWith<$R, FXParamDiscreteVal, $Out> {
  _FXParamDiscreteValCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FXParamDiscreteVal> $mapper =
      FXParamDiscreteValMapper.ensureInitialized();
  @override
  $R call({Object? name = $none, double? val}) => $apply(FieldCopyWithData(
      {if (name != $none) #name: name, if (val != null) #val: val}));
  @override
  FXParamDiscreteVal $make(CopyWithData data) => FXParamDiscreteVal(
      name: data.get(#name, or: $value.name),
      val: data.get(#val, or: $value.val));

  @override
  FXParamDiscreteValCopyWith<$R2, FXParamDiscreteVal, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FXParamDiscreteValCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class InstrumentMapper extends ClassMapperBase<Instrument> {
  InstrumentMapper._();

  static InstrumentMapper? _instance;
  static InstrumentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InstrumentMapper._());
      BaseControlMapper.ensureInitialized();
      FXMapper.ensureInitialized();
      LayerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Instrument';

  static String _$key(Instrument v) => v.key;
  static const Field<Instrument, String> _f$key = Field('key', _$key);
  static String _$name(Instrument v) => v.name;
  static const Field<Instrument, String> _f$name = Field('name', _$name);
  static BaseControl? _$volume(Instrument v) => v.volume;
  static const Field<Instrument, BaseControl> _f$volume =
      Field('volume', _$volume, opt: true);
  static BaseControl? _$pan(Instrument v) => v.pan;
  static const Field<Instrument, BaseControl> _f$pan =
      Field('pan', _$pan, opt: true);
  static List<FX>? _$tunes(Instrument v) => v.tunes;
  static const Field<Instrument, List<FX>> _f$tunes =
      Field('tunes', _$tunes, opt: true);
  static List<Layer>? _$layers(Instrument v) => v.layers;
  static const Field<Instrument, List<Layer>> _f$layers =
      Field('layers', _$layers, opt: true);

  @override
  final MappableFields<Instrument> fields = const {
    #key: _f$key,
    #name: _f$name,
    #volume: _f$volume,
    #pan: _f$pan,
    #tunes: _f$tunes,
    #layers: _f$layers,
  };

  static Instrument _instantiate(DecodingData data) {
    return Instrument(
        key: data.dec(_f$key),
        name: data.dec(_f$name),
        volume: data.dec(_f$volume),
        pan: data.dec(_f$pan),
        tunes: data.dec(_f$tunes),
        layers: data.dec(_f$layers));
  }

  @override
  final Function instantiate = _instantiate;

  static Instrument fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Instrument>(map);
  }

  static Instrument fromJson(String json) {
    return ensureInitialized().decodeJson<Instrument>(json);
  }
}

mixin InstrumentMappable {
  String toJson() {
    return InstrumentMapper.ensureInitialized()
        .encodeJson<Instrument>(this as Instrument);
  }

  Map<String, dynamic> toMap() {
    return InstrumentMapper.ensureInitialized()
        .encodeMap<Instrument>(this as Instrument);
  }

  InstrumentCopyWith<Instrument, Instrument, Instrument> get copyWith =>
      _InstrumentCopyWithImpl<Instrument, Instrument>(
          this as Instrument, $identity, $identity);
  @override
  String toString() {
    return InstrumentMapper.ensureInitialized()
        .stringifyValue(this as Instrument);
  }

  @override
  bool operator ==(Object other) {
    return InstrumentMapper.ensureInitialized()
        .equalsValue(this as Instrument, other);
  }

  @override
  int get hashCode {
    return InstrumentMapper.ensureInitialized().hashValue(this as Instrument);
  }
}

extension InstrumentValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Instrument, $Out> {
  InstrumentCopyWith<$R, Instrument, $Out> get $asInstrument =>
      $base.as((v, t, t2) => _InstrumentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class InstrumentCopyWith<$R, $In extends Instrument, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BaseControlCopyWith<$R, BaseControl, BaseControl>? get volume;
  BaseControlCopyWith<$R, BaseControl, BaseControl>? get pan;
  ListCopyWith<$R, FX, FXCopyWith<$R, FX, FX>>? get tunes;
  ListCopyWith<$R, Layer, LayerCopyWith<$R, Layer, Layer>>? get layers;
  $R call(
      {String? key,
      String? name,
      BaseControl? volume,
      BaseControl? pan,
      List<FX>? tunes,
      List<Layer>? layers});
  InstrumentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InstrumentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Instrument, $Out>
    implements InstrumentCopyWith<$R, Instrument, $Out> {
  _InstrumentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Instrument> $mapper =
      InstrumentMapper.ensureInitialized();
  @override
  BaseControlCopyWith<$R, BaseControl, BaseControl>? get volume =>
      $value.volume?.copyWith.$chain((v) => call(volume: v));
  @override
  BaseControlCopyWith<$R, BaseControl, BaseControl>? get pan =>
      $value.pan?.copyWith.$chain((v) => call(pan: v));
  @override
  ListCopyWith<$R, FX, FXCopyWith<$R, FX, FX>>? get tunes => $value.tunes !=
          null
      ? ListCopyWith(
          $value.tunes!, (v, t) => v.copyWith.$chain(t), (v) => call(tunes: v))
      : null;
  @override
  ListCopyWith<$R, Layer, LayerCopyWith<$R, Layer, Layer>>? get layers =>
      $value.layers != null
          ? ListCopyWith($value.layers!, (v, t) => v.copyWith.$chain(t),
              (v) => call(layers: v))
          : null;
  @override
  $R call(
          {String? key,
          String? name,
          Object? volume = $none,
          Object? pan = $none,
          Object? tunes = $none,
          Object? layers = $none}) =>
      $apply(FieldCopyWithData({
        if (key != null) #key: key,
        if (name != null) #name: name,
        if (volume != $none) #volume: volume,
        if (pan != $none) #pan: pan,
        if (tunes != $none) #tunes: tunes,
        if (layers != $none) #layers: layers
      }));
  @override
  Instrument $make(CopyWithData data) => Instrument(
      key: data.get(#key, or: $value.key),
      name: data.get(#name, or: $value.name),
      volume: data.get(#volume, or: $value.volume),
      pan: data.get(#pan, or: $value.pan),
      tunes: data.get(#tunes, or: $value.tunes),
      layers: data.get(#layers, or: $value.layers));

  @override
  InstrumentCopyWith<$R2, Instrument, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _InstrumentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LayerMapper extends ClassMapperBase<Layer> {
  LayerMapper._();

  static LayerMapper? _instance;
  static LayerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LayerMapper._());
      BaseControlMapper.ensureInitialized();
      FXMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Layer';

  static String _$key(Layer v) => v.key;
  static const Field<Layer, String> _f$key = Field('key', _$key);
  static String _$name(Layer v) => v.name;
  static const Field<Layer, String> _f$name = Field('name', _$name);
  static BaseControl? _$volume(Layer v) => v.volume;
  static const Field<Layer, BaseControl> _f$volume =
      Field('volume', _$volume, opt: true);
  static BaseControl? _$pan(Layer v) => v.pan;
  static const Field<Layer, BaseControl> _f$pan =
      Field('pan', _$pan, opt: true);
  static List<FX>? _$fxs(Layer v) => v.fxs;
  static const Field<Layer, List<FX>> _f$fxs = Field('fxs', _$fxs, opt: true);

  @override
  final MappableFields<Layer> fields = const {
    #key: _f$key,
    #name: _f$name,
    #volume: _f$volume,
    #pan: _f$pan,
    #fxs: _f$fxs,
  };

  static Layer _instantiate(DecodingData data) {
    return Layer(
        key: data.dec(_f$key),
        name: data.dec(_f$name),
        volume: data.dec(_f$volume),
        pan: data.dec(_f$pan),
        fxs: data.dec(_f$fxs));
  }

  @override
  final Function instantiate = _instantiate;

  static Layer fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Layer>(map);
  }

  static Layer fromJson(String json) {
    return ensureInitialized().decodeJson<Layer>(json);
  }
}

mixin LayerMappable {
  String toJson() {
    return LayerMapper.ensureInitialized().encodeJson<Layer>(this as Layer);
  }

  Map<String, dynamic> toMap() {
    return LayerMapper.ensureInitialized().encodeMap<Layer>(this as Layer);
  }

  LayerCopyWith<Layer, Layer, Layer> get copyWith =>
      _LayerCopyWithImpl<Layer, Layer>(this as Layer, $identity, $identity);
  @override
  String toString() {
    return LayerMapper.ensureInitialized().stringifyValue(this as Layer);
  }

  @override
  bool operator ==(Object other) {
    return LayerMapper.ensureInitialized().equalsValue(this as Layer, other);
  }

  @override
  int get hashCode {
    return LayerMapper.ensureInitialized().hashValue(this as Layer);
  }
}

extension LayerValueCopy<$R, $Out> on ObjectCopyWith<$R, Layer, $Out> {
  LayerCopyWith<$R, Layer, $Out> get $asLayer =>
      $base.as((v, t, t2) => _LayerCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LayerCopyWith<$R, $In extends Layer, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BaseControlCopyWith<$R, BaseControl, BaseControl>? get volume;
  BaseControlCopyWith<$R, BaseControl, BaseControl>? get pan;
  ListCopyWith<$R, FX, FXCopyWith<$R, FX, FX>>? get fxs;
  $R call(
      {String? key,
      String? name,
      BaseControl? volume,
      BaseControl? pan,
      List<FX>? fxs});
  LayerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LayerCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Layer, $Out>
    implements LayerCopyWith<$R, Layer, $Out> {
  _LayerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Layer> $mapper = LayerMapper.ensureInitialized();
  @override
  BaseControlCopyWith<$R, BaseControl, BaseControl>? get volume =>
      $value.volume?.copyWith.$chain((v) => call(volume: v));
  @override
  BaseControlCopyWith<$R, BaseControl, BaseControl>? get pan =>
      $value.pan?.copyWith.$chain((v) => call(pan: v));
  @override
  ListCopyWith<$R, FX, FXCopyWith<$R, FX, FX>>? get fxs => $value.fxs != null
      ? ListCopyWith(
          $value.fxs!, (v, t) => v.copyWith.$chain(t), (v) => call(fxs: v))
      : null;
  @override
  $R call(
          {String? key,
          String? name,
          Object? volume = $none,
          Object? pan = $none,
          Object? fxs = $none}) =>
      $apply(FieldCopyWithData({
        if (key != null) #key: key,
        if (name != null) #name: name,
        if (volume != $none) #volume: volume,
        if (pan != $none) #pan: pan,
        if (fxs != $none) #fxs: fxs
      }));
  @override
  Layer $make(CopyWithData data) => Layer(
      key: data.get(#key, or: $value.key),
      name: data.get(#name, or: $value.name),
      volume: data.get(#volume, or: $value.volume),
      pan: data.get(#pan, or: $value.pan),
      fxs: data.get(#fxs, or: $value.fxs));

  @override
  LayerCopyWith<$R2, Layer, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _LayerCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
