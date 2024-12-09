// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_preset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Preset _$PresetFromJson(Map<String, dynamic> json) {
  return _Preset.fromJson(json);
}

/// @nodoc
mixin _$Preset {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;
  List<Channel>? get channels => throw _privateConstructorUsedError;
  set channels(List<Channel>? value) => throw _privateConstructorUsedError;

  /// Serializes this Preset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresetCopyWith<Preset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresetCopyWith<$Res> {
  factory $PresetCopyWith(Preset value, $Res Function(Preset) then) =
      _$PresetCopyWithImpl<$Res, Preset>;
  @useResult
  $Res call(
      {String key, String name, String? description, List<Channel>? channels});
}

/// @nodoc
class _$PresetCopyWithImpl<$Res, $Val extends Preset>
    implements $PresetCopyWith<$Res> {
  _$PresetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? description = freezed,
    Object? channels = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PresetImplCopyWith<$Res> implements $PresetCopyWith<$Res> {
  factory _$$PresetImplCopyWith(
          _$PresetImpl value, $Res Function(_$PresetImpl) then) =
      __$$PresetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key, String name, String? description, List<Channel>? channels});
}

/// @nodoc
class __$$PresetImplCopyWithImpl<$Res>
    extends _$PresetCopyWithImpl<$Res, _$PresetImpl>
    implements _$$PresetImplCopyWith<$Res> {
  __$$PresetImplCopyWithImpl(
      _$PresetImpl _value, $Res Function(_$PresetImpl) _then)
      : super(_value, _then);

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? description = freezed,
    Object? channels = freezed,
  }) {
    return _then(_$PresetImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PresetImpl with DiagnosticableTreeMixin implements _Preset {
  const _$PresetImpl(
      {required this.key, required this.name, this.description, this.channels});

  factory _$PresetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PresetImplFromJson(json);

  @override
  final String key;
  @override
  String name;
  @override
  String? description;
  @override
  List<Channel>? channels;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Preset(key: $key, name: $name, description: $description, channels: $channels)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Preset'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('channels', channels));
  }

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresetImplCopyWith<_$PresetImpl> get copyWith =>
      __$$PresetImplCopyWithImpl<_$PresetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PresetImplToJson(
      this,
    );
  }
}

abstract class _Preset implements Preset {
  const factory _Preset(
      {required final String key,
      required String name,
      String? description,
      List<Channel>? channels}) = _$PresetImpl;

  factory _Preset.fromJson(Map<String, dynamic> json) = _$PresetImpl.fromJson;

  @override
  String get key;
  @override
  String get name;
  set name(String value);
  @override
  String? get description;
  set description(String? value);
  @override
  List<Channel>? get channels;
  set channels(List<Channel>? value);

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresetImplCopyWith<_$PresetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
mixin _$Channel {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  ChannelType get type => throw _privateConstructorUsedError;
  double get level => throw _privateConstructorUsedError;
  set level(double value) => throw _privateConstructorUsedError;
  double get pan => throw _privateConstructorUsedError;
  set pan(double value) => throw _privateConstructorUsedError;
  List<FX>? get fxs => throw _privateConstructorUsedError;
  set fxs(List<FX>? value) => throw _privateConstructorUsedError;
  List<Instrument>? get instruments => throw _privateConstructorUsedError;
  set instruments(List<Instrument>? value) =>
      throw _privateConstructorUsedError;

  /// Serializes this Channel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res, Channel>;
  @useResult
  $Res call(
      {String key,
      String name,
      ChannelType type,
      double level,
      double pan,
      List<FX>? fxs,
      List<Instrument>? instruments});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res, $Val extends Channel>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? type = null,
    Object? level = null,
    Object? pan = null,
    Object? fxs = freezed,
    Object? instruments = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChannelType,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double,
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as double,
      fxs: freezed == fxs
          ? _value.fxs
          : fxs // ignore: cast_nullable_to_non_nullable
              as List<FX>?,
      instruments: freezed == instruments
          ? _value.instruments
          : instruments // ignore: cast_nullable_to_non_nullable
              as List<Instrument>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelImplCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$ChannelImplCopyWith(
          _$ChannelImpl value, $Res Function(_$ChannelImpl) then) =
      __$$ChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String name,
      ChannelType type,
      double level,
      double pan,
      List<FX>? fxs,
      List<Instrument>? instruments});
}

/// @nodoc
class __$$ChannelImplCopyWithImpl<$Res>
    extends _$ChannelCopyWithImpl<$Res, _$ChannelImpl>
    implements _$$ChannelImplCopyWith<$Res> {
  __$$ChannelImplCopyWithImpl(
      _$ChannelImpl _value, $Res Function(_$ChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? type = null,
    Object? level = null,
    Object? pan = null,
    Object? fxs = freezed,
    Object? instruments = freezed,
  }) {
    return _then(_$ChannelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChannelType,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double,
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as double,
      fxs: freezed == fxs
          ? _value.fxs
          : fxs // ignore: cast_nullable_to_non_nullable
              as List<FX>?,
      instruments: freezed == instruments
          ? _value.instruments
          : instruments // ignore: cast_nullable_to_non_nullable
              as List<Instrument>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelImpl with DiagnosticableTreeMixin implements _Channel {
  const _$ChannelImpl(
      {required this.key,
      required this.name,
      required this.type,
      required this.level,
      required this.pan,
      this.fxs,
      this.instruments});

  factory _$ChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelImplFromJson(json);

  @override
  final String key;
  @override
  String name;
  @override
  final ChannelType type;
  @override
  double level;
  @override
  double pan;
  @override
  List<FX>? fxs;
  @override
  List<Instrument>? instruments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Channel(key: $key, name: $name, type: $type, level: $level, pan: $pan, fxs: $fxs, instruments: $instruments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Channel'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('pan', pan))
      ..add(DiagnosticsProperty('fxs', fxs))
      ..add(DiagnosticsProperty('instruments', instruments));
  }

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      __$$ChannelImplCopyWithImpl<_$ChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelImplToJson(
      this,
    );
  }
}

abstract class _Channel implements Channel {
  const factory _Channel(
      {required final String key,
      required String name,
      required final ChannelType type,
      required double level,
      required double pan,
      List<FX>? fxs,
      List<Instrument>? instruments}) = _$ChannelImpl;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$ChannelImpl.fromJson;

  @override
  String get key;
  @override
  String get name;
  set name(String value);
  @override
  ChannelType get type;
  @override
  double get level;
  set level(double value);
  @override
  double get pan;
  set pan(double value);
  @override
  List<FX>? get fxs;
  set fxs(List<FX>? value);
  @override
  List<Instrument>? get instruments;
  set instruments(List<Instrument>? value);

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Instrument _$InstrumentFromJson(Map<String, dynamic> json) {
  return _Instrument.fromJson(json);
}

/// @nodoc
mixin _$Instrument {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  List<FX>? get tunes => throw _privateConstructorUsedError;
  set tunes(List<FX>? value) => throw _privateConstructorUsedError;
  List<Layer>? get layers => throw _privateConstructorUsedError;
  set layers(List<Layer>? value) => throw _privateConstructorUsedError;

  /// Serializes this Instrument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Instrument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstrumentCopyWith<Instrument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstrumentCopyWith<$Res> {
  factory $InstrumentCopyWith(
          Instrument value, $Res Function(Instrument) then) =
      _$InstrumentCopyWithImpl<$Res, Instrument>;
  @useResult
  $Res call({String key, String name, List<FX>? tunes, List<Layer>? layers});
}

/// @nodoc
class _$InstrumentCopyWithImpl<$Res, $Val extends Instrument>
    implements $InstrumentCopyWith<$Res> {
  _$InstrumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Instrument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? tunes = freezed,
    Object? layers = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tunes: freezed == tunes
          ? _value.tunes
          : tunes // ignore: cast_nullable_to_non_nullable
              as List<FX>?,
      layers: freezed == layers
          ? _value.layers
          : layers // ignore: cast_nullable_to_non_nullable
              as List<Layer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstrumentImplCopyWith<$Res>
    implements $InstrumentCopyWith<$Res> {
  factory _$$InstrumentImplCopyWith(
          _$InstrumentImpl value, $Res Function(_$InstrumentImpl) then) =
      __$$InstrumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String name, List<FX>? tunes, List<Layer>? layers});
}

/// @nodoc
class __$$InstrumentImplCopyWithImpl<$Res>
    extends _$InstrumentCopyWithImpl<$Res, _$InstrumentImpl>
    implements _$$InstrumentImplCopyWith<$Res> {
  __$$InstrumentImplCopyWithImpl(
      _$InstrumentImpl _value, $Res Function(_$InstrumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Instrument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? tunes = freezed,
    Object? layers = freezed,
  }) {
    return _then(_$InstrumentImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tunes: freezed == tunes
          ? _value.tunes
          : tunes // ignore: cast_nullable_to_non_nullable
              as List<FX>?,
      layers: freezed == layers
          ? _value.layers
          : layers // ignore: cast_nullable_to_non_nullable
              as List<Layer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstrumentImpl with DiagnosticableTreeMixin implements _Instrument {
  const _$InstrumentImpl(
      {required this.key, required this.name, this.tunes, this.layers});

  factory _$InstrumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstrumentImplFromJson(json);

  @override
  final String key;
  @override
  String name;
  @override
  List<FX>? tunes;
  @override
  List<Layer>? layers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Instrument(key: $key, name: $name, tunes: $tunes, layers: $layers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Instrument'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tunes', tunes))
      ..add(DiagnosticsProperty('layers', layers));
  }

  /// Create a copy of Instrument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstrumentImplCopyWith<_$InstrumentImpl> get copyWith =>
      __$$InstrumentImplCopyWithImpl<_$InstrumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstrumentImplToJson(
      this,
    );
  }
}

abstract class _Instrument implements Instrument {
  const factory _Instrument(
      {required final String key,
      required String name,
      List<FX>? tunes,
      List<Layer>? layers}) = _$InstrumentImpl;

  factory _Instrument.fromJson(Map<String, dynamic> json) =
      _$InstrumentImpl.fromJson;

  @override
  String get key;
  @override
  String get name;
  set name(String value);
  @override
  List<FX>? get tunes;
  set tunes(List<FX>? value);
  @override
  List<Layer>? get layers;
  set layers(List<Layer>? value);

  /// Create a copy of Instrument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstrumentImplCopyWith<_$InstrumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Layer _$LayerFromJson(Map<String, dynamic> json) {
  return _Layer.fromJson(json);
}

/// @nodoc
mixin _$Layer {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  double? get level => throw _privateConstructorUsedError;
  set level(double? value) => throw _privateConstructorUsedError;
  List<FX>? get fxs => throw _privateConstructorUsedError;
  set fxs(List<FX>? value) => throw _privateConstructorUsedError;

  /// Serializes this Layer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Layer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LayerCopyWith<Layer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayerCopyWith<$Res> {
  factory $LayerCopyWith(Layer value, $Res Function(Layer) then) =
      _$LayerCopyWithImpl<$Res, Layer>;
  @useResult
  $Res call({String key, String name, double? level, List<FX>? fxs});
}

/// @nodoc
class _$LayerCopyWithImpl<$Res, $Val extends Layer>
    implements $LayerCopyWith<$Res> {
  _$LayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Layer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? level = freezed,
    Object? fxs = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
      fxs: freezed == fxs
          ? _value.fxs
          : fxs // ignore: cast_nullable_to_non_nullable
              as List<FX>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LayerImplCopyWith<$Res> implements $LayerCopyWith<$Res> {
  factory _$$LayerImplCopyWith(
          _$LayerImpl value, $Res Function(_$LayerImpl) then) =
      __$$LayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String name, double? level, List<FX>? fxs});
}

/// @nodoc
class __$$LayerImplCopyWithImpl<$Res>
    extends _$LayerCopyWithImpl<$Res, _$LayerImpl>
    implements _$$LayerImplCopyWith<$Res> {
  __$$LayerImplCopyWithImpl(
      _$LayerImpl _value, $Res Function(_$LayerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Layer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? level = freezed,
    Object? fxs = freezed,
  }) {
    return _then(_$LayerImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
      fxs: freezed == fxs
          ? _value.fxs
          : fxs // ignore: cast_nullable_to_non_nullable
              as List<FX>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LayerImpl with DiagnosticableTreeMixin implements _Layer {
  const _$LayerImpl(
      {required this.key, required this.name, this.level, this.fxs});

  factory _$LayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$LayerImplFromJson(json);

  @override
  final String key;
  @override
  String name;
  @override
  double? level;
  @override
  List<FX>? fxs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Layer(key: $key, name: $name, level: $level, fxs: $fxs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Layer'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('fxs', fxs));
  }

  /// Create a copy of Layer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LayerImplCopyWith<_$LayerImpl> get copyWith =>
      __$$LayerImplCopyWithImpl<_$LayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LayerImplToJson(
      this,
    );
  }
}

abstract class _Layer implements Layer {
  const factory _Layer(
      {required final String key,
      required String name,
      double? level,
      List<FX>? fxs}) = _$LayerImpl;

  factory _Layer.fromJson(Map<String, dynamic> json) = _$LayerImpl.fromJson;

  @override
  String get key;
  @override
  String get name;
  set name(String value);
  @override
  double? get level;
  set level(double? value);
  @override
  List<FX>? get fxs;
  set fxs(List<FX>? value);

  /// Create a copy of Layer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LayerImplCopyWith<_$LayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FX _$FXFromJson(Map<String, dynamic> json) {
  return _FX.fromJson(json);
}

/// @nodoc
mixin _$FX {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  set order(int value) => throw _privateConstructorUsedError;
  List<FXParam> get params => throw _privateConstructorUsedError;

  /// Serializes this FX to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FX
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FXCopyWith<FX> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FXCopyWith<$Res> {
  factory $FXCopyWith(FX value, $Res Function(FX) then) =
      _$FXCopyWithImpl<$Res, FX>;
  @useResult
  $Res call({String key, String name, int order, List<FXParam> params});
}

/// @nodoc
class _$FXCopyWithImpl<$Res, $Val extends FX> implements $FXCopyWith<$Res> {
  _$FXCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FX
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? order = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as List<FXParam>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FXImplCopyWith<$Res> implements $FXCopyWith<$Res> {
  factory _$$FXImplCopyWith(_$FXImpl value, $Res Function(_$FXImpl) then) =
      __$$FXImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String name, int order, List<FXParam> params});
}

/// @nodoc
class __$$FXImplCopyWithImpl<$Res> extends _$FXCopyWithImpl<$Res, _$FXImpl>
    implements _$$FXImplCopyWith<$Res> {
  __$$FXImplCopyWithImpl(_$FXImpl _value, $Res Function(_$FXImpl) _then)
      : super(_value, _then);

  /// Create a copy of FX
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? order = null,
    Object? params = null,
  }) {
    return _then(_$FXImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as List<FXParam>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FXImpl with DiagnosticableTreeMixin implements _FX {
  const _$FXImpl(
      {required this.key,
      required this.name,
      required this.order,
      required this.params});

  factory _$FXImpl.fromJson(Map<String, dynamic> json) =>
      _$$FXImplFromJson(json);

  @override
  final String key;
  @override
  final String name;
  @override
  int order;
  @override
  final List<FXParam> params;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FX(key: $key, name: $name, order: $order, params: $params)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FX'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('params', params));
  }

  /// Create a copy of FX
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FXImplCopyWith<_$FXImpl> get copyWith =>
      __$$FXImplCopyWithImpl<_$FXImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FXImplToJson(
      this,
    );
  }
}

abstract class _FX implements FX {
  const factory _FX(
      {required final String key,
      required final String name,
      required int order,
      required final List<FXParam> params}) = _$FXImpl;

  factory _FX.fromJson(Map<String, dynamic> json) = _$FXImpl.fromJson;

  @override
  String get key;
  @override
  String get name;
  @override
  int get order;
  set order(int value);
  @override
  List<FXParam> get params;

  /// Create a copy of FX
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FXImplCopyWith<_$FXImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FXParam _$FXParamFromJson(Map<String, dynamic> json) {
  return _FXParam.fromJson(json);
}

/// @nodoc
mixin _$FXParam {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  set order(int value) => throw _privateConstructorUsedError;
  FXParamType get type => throw _privateConstructorUsedError;
  double? get min => throw _privateConstructorUsedError;
  double? get max => throw _privateConstructorUsedError;
  int? get divisions => throw _privateConstructorUsedError;
  List<FXParamDiscreteVal>? get discrete_vals =>
      throw _privateConstructorUsedError;
  set discrete_vals(List<FXParamDiscreteVal>? value) =>
      throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  set value(double value) => throw _privateConstructorUsedError;

  /// Serializes this FXParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FXParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FXParamCopyWith<FXParam> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FXParamCopyWith<$Res> {
  factory $FXParamCopyWith(FXParam value, $Res Function(FXParam) then) =
      _$FXParamCopyWithImpl<$Res, FXParam>;
  @useResult
  $Res call(
      {String key,
      String name,
      int order,
      FXParamType type,
      double? min,
      double? max,
      int? divisions,
      List<FXParamDiscreteVal>? discrete_vals,
      double value});
}

/// @nodoc
class _$FXParamCopyWithImpl<$Res, $Val extends FXParam>
    implements $FXParamCopyWith<$Res> {
  _$FXParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FXParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? order = null,
    Object? type = null,
    Object? min = freezed,
    Object? max = freezed,
    Object? divisions = freezed,
    Object? discrete_vals = freezed,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FXParamType,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      divisions: freezed == divisions
          ? _value.divisions
          : divisions // ignore: cast_nullable_to_non_nullable
              as int?,
      discrete_vals: freezed == discrete_vals
          ? _value.discrete_vals
          : discrete_vals // ignore: cast_nullable_to_non_nullable
              as List<FXParamDiscreteVal>?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FXParamImplCopyWith<$Res> implements $FXParamCopyWith<$Res> {
  factory _$$FXParamImplCopyWith(
          _$FXParamImpl value, $Res Function(_$FXParamImpl) then) =
      __$$FXParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String name,
      int order,
      FXParamType type,
      double? min,
      double? max,
      int? divisions,
      List<FXParamDiscreteVal>? discrete_vals,
      double value});
}

/// @nodoc
class __$$FXParamImplCopyWithImpl<$Res>
    extends _$FXParamCopyWithImpl<$Res, _$FXParamImpl>
    implements _$$FXParamImplCopyWith<$Res> {
  __$$FXParamImplCopyWithImpl(
      _$FXParamImpl _value, $Res Function(_$FXParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of FXParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? order = null,
    Object? type = null,
    Object? min = freezed,
    Object? max = freezed,
    Object? divisions = freezed,
    Object? discrete_vals = freezed,
    Object? value = null,
  }) {
    return _then(_$FXParamImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FXParamType,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      divisions: freezed == divisions
          ? _value.divisions
          : divisions // ignore: cast_nullable_to_non_nullable
              as int?,
      discrete_vals: freezed == discrete_vals
          ? _value.discrete_vals
          : discrete_vals // ignore: cast_nullable_to_non_nullable
              as List<FXParamDiscreteVal>?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FXParamImpl with DiagnosticableTreeMixin implements _FXParam {
  const _$FXParamImpl(
      {required this.key,
      required this.name,
      required this.order,
      required this.type,
      this.min,
      this.max,
      this.divisions,
      this.discrete_vals,
      required this.value});

  factory _$FXParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$FXParamImplFromJson(json);

  @override
  final String key;
  @override
  final String name;
  @override
  int order;
  @override
  final FXParamType type;
  @override
  final double? min;
  @override
  final double? max;
  @override
  final int? divisions;
  @override
  List<FXParamDiscreteVal>? discrete_vals;
  @override
  double value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FXParam(key: $key, name: $name, order: $order, type: $type, min: $min, max: $max, divisions: $divisions, discrete_vals: $discrete_vals, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FXParam'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('min', min))
      ..add(DiagnosticsProperty('max', max))
      ..add(DiagnosticsProperty('divisions', divisions))
      ..add(DiagnosticsProperty('discrete_vals', discrete_vals))
      ..add(DiagnosticsProperty('value', value));
  }

  /// Create a copy of FXParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FXParamImplCopyWith<_$FXParamImpl> get copyWith =>
      __$$FXParamImplCopyWithImpl<_$FXParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FXParamImplToJson(
      this,
    );
  }
}

abstract class _FXParam implements FXParam {
  const factory _FXParam(
      {required final String key,
      required final String name,
      required int order,
      required final FXParamType type,
      final double? min,
      final double? max,
      final int? divisions,
      List<FXParamDiscreteVal>? discrete_vals,
      required double value}) = _$FXParamImpl;

  factory _FXParam.fromJson(Map<String, dynamic> json) = _$FXParamImpl.fromJson;

  @override
  String get key;
  @override
  String get name;
  @override
  int get order;
  set order(int value);
  @override
  FXParamType get type;
  @override
  double? get min;
  @override
  double? get max;
  @override
  int? get divisions;
  @override
  List<FXParamDiscreteVal>? get discrete_vals;
  set discrete_vals(List<FXParamDiscreteVal>? value);
  @override
  double get value;
  set value(double value);

  /// Create a copy of FXParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FXParamImplCopyWith<_$FXParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FXParamDiscreteVal _$FXParamDiscreteValFromJson(Map<String, dynamic> json) {
  return _FXParamDiscreteVal.fromJson(json);
}

/// @nodoc
mixin _$FXParamDiscreteVal {
  String? get name => throw _privateConstructorUsedError;
  double get val => throw _privateConstructorUsedError;

  /// Serializes this FXParamDiscreteVal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FXParamDiscreteVal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FXParamDiscreteValCopyWith<FXParamDiscreteVal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FXParamDiscreteValCopyWith<$Res> {
  factory $FXParamDiscreteValCopyWith(
          FXParamDiscreteVal value, $Res Function(FXParamDiscreteVal) then) =
      _$FXParamDiscreteValCopyWithImpl<$Res, FXParamDiscreteVal>;
  @useResult
  $Res call({String? name, double val});
}

/// @nodoc
class _$FXParamDiscreteValCopyWithImpl<$Res, $Val extends FXParamDiscreteVal>
    implements $FXParamDiscreteValCopyWith<$Res> {
  _$FXParamDiscreteValCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FXParamDiscreteVal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? val = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      val: null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FXParamDiscreteValImplCopyWith<$Res>
    implements $FXParamDiscreteValCopyWith<$Res> {
  factory _$$FXParamDiscreteValImplCopyWith(_$FXParamDiscreteValImpl value,
          $Res Function(_$FXParamDiscreteValImpl) then) =
      __$$FXParamDiscreteValImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, double val});
}

/// @nodoc
class __$$FXParamDiscreteValImplCopyWithImpl<$Res>
    extends _$FXParamDiscreteValCopyWithImpl<$Res, _$FXParamDiscreteValImpl>
    implements _$$FXParamDiscreteValImplCopyWith<$Res> {
  __$$FXParamDiscreteValImplCopyWithImpl(_$FXParamDiscreteValImpl _value,
      $Res Function(_$FXParamDiscreteValImpl) _then)
      : super(_value, _then);

  /// Create a copy of FXParamDiscreteVal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? val = null,
  }) {
    return _then(_$FXParamDiscreteValImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      val: null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FXParamDiscreteValImpl
    with DiagnosticableTreeMixin
    implements _FXParamDiscreteVal {
  const _$FXParamDiscreteValImpl({this.name, required this.val});

  factory _$FXParamDiscreteValImpl.fromJson(Map<String, dynamic> json) =>
      _$$FXParamDiscreteValImplFromJson(json);

  @override
  final String? name;
  @override
  final double val;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FXParamDiscreteVal(name: $name, val: $val)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FXParamDiscreteVal'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('val', val));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FXParamDiscreteValImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.val, val) || other.val == val));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, val);

  /// Create a copy of FXParamDiscreteVal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FXParamDiscreteValImplCopyWith<_$FXParamDiscreteValImpl> get copyWith =>
      __$$FXParamDiscreteValImplCopyWithImpl<_$FXParamDiscreteValImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FXParamDiscreteValImplToJson(
      this,
    );
  }
}

abstract class _FXParamDiscreteVal implements FXParamDiscreteVal {
  const factory _FXParamDiscreteVal(
      {final String? name,
      required final double val}) = _$FXParamDiscreteValImpl;

  factory _FXParamDiscreteVal.fromJson(Map<String, dynamic> json) =
      _$FXParamDiscreteValImpl.fromJson;

  @override
  String? get name;
  @override
  double get val;

  /// Create a copy of FXParamDiscreteVal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FXParamDiscreteValImplCopyWith<_$FXParamDiscreteValImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
