import 'package:dart_mappable/dart_mappable.dart';

part 'control_value.mapper.dart';

@MappableClass()
class ControlValue with ControlValueMappable {
  final String key;
  final int seq;
  final double value;

  const ControlValue({
    required this.key,
    required this.seq,
    required this.value,
  });
} 