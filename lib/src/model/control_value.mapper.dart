// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'control_value.dart';

class ControlValueMapper extends ClassMapperBase<ControlValue> {
  ControlValueMapper._();

  static ControlValueMapper? _instance;
  static ControlValueMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ControlValueMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ControlValue';

  static String _$key(ControlValue v) => v.key;
  static const Field<ControlValue, String> _f$key = Field('key', _$key);
  static int _$seq(ControlValue v) => v.seq;
  static const Field<ControlValue, int> _f$seq = Field('seq', _$seq);
  static double _$value(ControlValue v) => v.value;
  static const Field<ControlValue, double> _f$value = Field('value', _$value);

  @override
  final MappableFields<ControlValue> fields = const {
    #key: _f$key,
    #seq: _f$seq,
    #value: _f$value,
  };

  static ControlValue _instantiate(DecodingData data) {
    return ControlValue(
        key: data.dec(_f$key),
        seq: data.dec(_f$seq),
        value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static ControlValue fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ControlValue>(map);
  }

  static ControlValue fromJson(String json) {
    return ensureInitialized().decodeJson<ControlValue>(json);
  }
}

mixin ControlValueMappable {
  String toJson() {
    return ControlValueMapper.ensureInitialized()
        .encodeJson<ControlValue>(this as ControlValue);
  }

  Map<String, dynamic> toMap() {
    return ControlValueMapper.ensureInitialized()
        .encodeMap<ControlValue>(this as ControlValue);
  }

  ControlValueCopyWith<ControlValue, ControlValue, ControlValue> get copyWith =>
      _ControlValueCopyWithImpl<ControlValue, ControlValue>(
          this as ControlValue, $identity, $identity);
  @override
  String toString() {
    return ControlValueMapper.ensureInitialized()
        .stringifyValue(this as ControlValue);
  }

  @override
  bool operator ==(Object other) {
    return ControlValueMapper.ensureInitialized()
        .equalsValue(this as ControlValue, other);
  }

  @override
  int get hashCode {
    return ControlValueMapper.ensureInitialized()
        .hashValue(this as ControlValue);
  }
}

extension ControlValueValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ControlValue, $Out> {
  ControlValueCopyWith<$R, ControlValue, $Out> get $asControlValue =>
      $base.as((v, t, t2) => _ControlValueCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ControlValueCopyWith<$R, $In extends ControlValue, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? key, int? seq, double? value});
  ControlValueCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ControlValueCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ControlValue, $Out>
    implements ControlValueCopyWith<$R, ControlValue, $Out> {
  _ControlValueCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ControlValue> $mapper =
      ControlValueMapper.ensureInitialized();
  @override
  $R call({String? key, int? seq, double? value}) => $apply(FieldCopyWithData({
        if (key != null) #key: key,
        if (seq != null) #seq: seq,
        if (value != null) #value: value
      }));
  @override
  ControlValue $make(CopyWithData data) => ControlValue(
      key: data.get(#key, or: $value.key),
      seq: data.get(#seq, or: $value.seq),
      value: data.get(#value, or: $value.value));

  @override
  ControlValueCopyWith<$R2, ControlValue, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ControlValueCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
