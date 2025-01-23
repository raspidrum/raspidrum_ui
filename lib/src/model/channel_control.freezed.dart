// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_control.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelControls _$ChannelControlsFromJson(Map<String, dynamic> json) {
  return _ChannelControls.fromJson(json);
}

/// @nodoc
mixin _$ChannelControls {
  List<Channel>? get channels => throw _privateConstructorUsedError;
  set channels(List<Channel>? value) => throw _privateConstructorUsedError;
  List<FX>? get fxs => throw _privateConstructorUsedError;
  set fxs(List<FX>? value) => throw _privateConstructorUsedError;

  /// Serializes this ChannelControls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChannelControls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelControlsCopyWith<ChannelControls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelControlsCopyWith<$Res> {
  factory $ChannelControlsCopyWith(
          ChannelControls value, $Res Function(ChannelControls) then) =
      _$ChannelControlsCopyWithImpl<$Res, ChannelControls>;
  @useResult
  $Res call({List<Channel>? channels, List<FX>? fxs});
}

/// @nodoc
class _$ChannelControlsCopyWithImpl<$Res, $Val extends ChannelControls>
    implements $ChannelControlsCopyWith<$Res> {
  _$ChannelControlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChannelControls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = freezed,
    Object? fxs = freezed,
  }) {
    return _then(_value.copyWith(
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>?,
      fxs: freezed == fxs
          ? _value.fxs
          : fxs // ignore: cast_nullable_to_non_nullable
              as List<FX>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelControlsImplCopyWith<$Res>
    implements $ChannelControlsCopyWith<$Res> {
  factory _$$ChannelControlsImplCopyWith(_$ChannelControlsImpl value,
          $Res Function(_$ChannelControlsImpl) then) =
      __$$ChannelControlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Channel>? channels, List<FX>? fxs});
}

/// @nodoc
class __$$ChannelControlsImplCopyWithImpl<$Res>
    extends _$ChannelControlsCopyWithImpl<$Res, _$ChannelControlsImpl>
    implements _$$ChannelControlsImplCopyWith<$Res> {
  __$$ChannelControlsImplCopyWithImpl(
      _$ChannelControlsImpl _value, $Res Function(_$ChannelControlsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChannelControls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = freezed,
    Object? fxs = freezed,
  }) {
    return _then(_$ChannelControlsImpl(
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>?,
      fxs: freezed == fxs
          ? _value.fxs
          : fxs // ignore: cast_nullable_to_non_nullable
              as List<FX>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelControlsImpl implements _ChannelControls {
  _$ChannelControlsImpl({this.channels, this.fxs});

  factory _$ChannelControlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelControlsImplFromJson(json);

  @override
  List<Channel>? channels;
  @override
  List<FX>? fxs;

  @override
  String toString() {
    return 'ChannelControls(channels: $channels, fxs: $fxs)';
  }

  /// Create a copy of ChannelControls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelControlsImplCopyWith<_$ChannelControlsImpl> get copyWith =>
      __$$ChannelControlsImplCopyWithImpl<_$ChannelControlsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelControlsImplToJson(
      this,
    );
  }
}

abstract class _ChannelControls implements ChannelControls {
  factory _ChannelControls({List<Channel>? channels, List<FX>? fxs}) =
      _$ChannelControlsImpl;

  factory _ChannelControls.fromJson(Map<String, dynamic> json) =
      _$ChannelControlsImpl.fromJson;

  @override
  List<Channel>? get channels;
  set channels(List<Channel>? value);
  @override
  List<FX>? get fxs;
  set fxs(List<FX>? value);

  /// Create a copy of ChannelControls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelControlsImplCopyWith<_$ChannelControlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
mixin _$Channel {
  String get key => throw _privateConstructorUsedError;
  double get level => throw _privateConstructorUsedError;
  double get pan => throw _privateConstructorUsedError;

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
  $Res call({String key, double level, double pan});
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
    Object? level = null,
    Object? pan = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double,
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as double,
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
  $Res call({String key, double level, double pan});
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
    Object? level = null,
    Object? pan = null,
  }) {
    return _then(_$ChannelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double,
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelImpl implements _Channel {
  _$ChannelImpl({required this.key, required this.level, required this.pan});

  factory _$ChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelImplFromJson(json);

  @override
  final String key;
  @override
  final double level;
  @override
  final double pan;

  @override
  String toString() {
    return 'Channel(key: $key, level: $level, pan: $pan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.pan, pan) || other.pan == pan));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, level, pan);

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
  factory _Channel(
      {required final String key,
      required final double level,
      required final double pan}) = _$ChannelImpl;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$ChannelImpl.fromJson;

  @override
  String get key;
  @override
  double get level;
  @override
  double get pan;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FX _$FXFromJson(Map<String, dynamic> json) {
  return _FX.fromJson(json);
}

/// @nodoc
mixin _$FX {
  String get key => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

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
  $Res call({String key, double value});
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
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FXImplCopyWith<$Res> implements $FXCopyWith<$Res> {
  factory _$$FXImplCopyWith(_$FXImpl value, $Res Function(_$FXImpl) then) =
      __$$FXImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, double value});
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
    Object? value = null,
  }) {
    return _then(_$FXImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FXImpl implements _FX {
  _$FXImpl({required this.key, required this.value});

  factory _$FXImpl.fromJson(Map<String, dynamic> json) =>
      _$$FXImplFromJson(json);

  @override
  final String key;
  @override
  final double value;

  @override
  String toString() {
    return 'FX(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FXImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

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
  factory _FX({required final String key, required final double value}) =
      _$FXImpl;

  factory _FX.fromJson(Map<String, dynamic> json) = _$FXImpl.fromJson;

  @override
  String get key;
  @override
  double get value;

  /// Create a copy of FX
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FXImplCopyWith<_$FXImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
