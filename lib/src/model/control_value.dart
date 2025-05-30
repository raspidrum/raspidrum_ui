import 'package:freezed_annotation/freezed_annotation.dart';

part 'control_value.freezed.dart';
part 'control_value.g.dart';

@freezed
class ControlValue with _$ControlValue {
  const factory ControlValue({
    required String key,
    required int seq,
    required double value,
  }) = _ControlValue;

  factory ControlValue.fromJson(Map<String, Object?> json) => _$ControlValueFromJson(json);
} 