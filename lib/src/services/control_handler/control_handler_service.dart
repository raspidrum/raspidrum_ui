import '../../utils/result.dart';
import '../../model/control_value.dart';

abstract class ControlHandlerService {
  Future<Result<ControlValue>> setValue(String key, int seq, double value);
}