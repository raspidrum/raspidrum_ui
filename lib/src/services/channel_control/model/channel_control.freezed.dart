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

ChannelControl _$ChannelControlFromJson(Map<String, dynamic> json) {
  return _ChannelControl.fromJson(json);
}

/// @nodoc
mixin _$ChannelControl {
  String get key => throw _privateConstructorUsedError;
  int get seq => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this ChannelControl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChannelControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelControlCopyWith<ChannelControl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelControlCopyWith<$Res> {
  factory $ChannelControlCopyWith(
          ChannelControl value, $Res Function(ChannelControl) then) =
      _$ChannelControlCopyWithImpl<$Res, ChannelControl>;
  @useResult
  $Res call({String key, int seq, double value});
}

/// @nodoc
class _$ChannelControlCopyWithImpl<$Res, $Val extends ChannelControl>
    implements $ChannelControlCopyWith<$Res> {
  _$ChannelControlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChannelControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? seq = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelControlImplCopyWith<$Res>
    implements $ChannelControlCopyWith<$Res> {
  factory _$$ChannelControlImplCopyWith(_$ChannelControlImpl value,
          $Res Function(_$ChannelControlImpl) then) =
      __$$ChannelControlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, int seq, double value});
}

/// @nodoc
class __$$ChannelControlImplCopyWithImpl<$Res>
    extends _$ChannelControlCopyWithImpl<$Res, _$ChannelControlImpl>
    implements _$$ChannelControlImplCopyWith<$Res> {
  __$$ChannelControlImplCopyWithImpl(
      _$ChannelControlImpl _value, $Res Function(_$ChannelControlImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChannelControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? seq = null,
    Object? value = null,
  }) {
    return _then(_$ChannelControlImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelControlImpl implements _ChannelControl {
  const _$ChannelControlImpl(
      {required this.key, required this.seq, required this.value});

  factory _$ChannelControlImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelControlImplFromJson(json);

  @override
  final String key;
  @override
  final int seq;
  @override
  final double value;

  @override
  String toString() {
    return 'ChannelControl(key: $key, seq: $seq, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelControlImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, seq, value);

  /// Create a copy of ChannelControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelControlImplCopyWith<_$ChannelControlImpl> get copyWith =>
      __$$ChannelControlImplCopyWithImpl<_$ChannelControlImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelControlImplToJson(
      this,
    );
  }
}

abstract class _ChannelControl implements ChannelControl {
  const factory _ChannelControl(
      {required final String key,
      required final int seq,
      required final double value}) = _$ChannelControlImpl;

  factory _ChannelControl.fromJson(Map<String, dynamic> json) =
      _$ChannelControlImpl.fromJson;

  @override
  String get key;
  @override
  int get seq;
  @override
  double get value;

  /// Create a copy of ChannelControl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelControlImplCopyWith<_$ChannelControlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
