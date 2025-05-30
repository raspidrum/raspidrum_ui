// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'control_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ControlValue _$ControlValueFromJson(Map<String, dynamic> json) {
  return _ControlValue.fromJson(json);
}

/// @nodoc
mixin _$ControlValue {
  String get key => throw _privateConstructorUsedError;
  int get seq => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this ControlValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ControlValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ControlValueCopyWith<ControlValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControlValueCopyWith<$Res> {
  factory $ControlValueCopyWith(
          ControlValue value, $Res Function(ControlValue) then) =
      _$ControlValueCopyWithImpl<$Res, ControlValue>;
  @useResult
  $Res call({String key, int seq, double value});
}

/// @nodoc
class _$ControlValueCopyWithImpl<$Res, $Val extends ControlValue>
    implements $ControlValueCopyWith<$Res> {
  _$ControlValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ControlValue
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
abstract class _$$ControlValueImplCopyWith<$Res>
    implements $ControlValueCopyWith<$Res> {
  factory _$$ControlValueImplCopyWith(
          _$ControlValueImpl value, $Res Function(_$ControlValueImpl) then) =
      __$$ControlValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, int seq, double value});
}

/// @nodoc
class __$$ControlValueImplCopyWithImpl<$Res>
    extends _$ControlValueCopyWithImpl<$Res, _$ControlValueImpl>
    implements _$$ControlValueImplCopyWith<$Res> {
  __$$ControlValueImplCopyWithImpl(
      _$ControlValueImpl _value, $Res Function(_$ControlValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ControlValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? seq = null,
    Object? value = null,
  }) {
    return _then(_$ControlValueImpl(
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
class _$ControlValueImpl implements _ControlValue {
  const _$ControlValueImpl(
      {required this.key, required this.seq, required this.value});

  factory _$ControlValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ControlValueImplFromJson(json);

  @override
  final String key;
  @override
  final int seq;
  @override
  final double value;

  @override
  String toString() {
    return 'ControlValue(key: $key, seq: $seq, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControlValueImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, seq, value);

  /// Create a copy of ControlValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ControlValueImplCopyWith<_$ControlValueImpl> get copyWith =>
      __$$ControlValueImplCopyWithImpl<_$ControlValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ControlValueImplToJson(
      this,
    );
  }
}

abstract class _ControlValue implements ControlValue {
  const factory _ControlValue(
      {required final String key,
      required final int seq,
      required final double value}) = _$ControlValueImpl;

  factory _ControlValue.fromJson(Map<String, dynamic> json) =
      _$ControlValueImpl.fromJson;

  @override
  String get key;
  @override
  int get seq;
  @override
  double get value;

  /// Create a copy of ControlValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ControlValueImplCopyWith<_$ControlValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
