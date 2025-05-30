import '../../utils/result.dart';
import '../../model/control_value.dart';

abstract class ChannelControlService {
  Future<Result<ControlValue>> setValue(String key, int seq, double value);
}