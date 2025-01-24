

import '../../utils/result.dart';
import 'model/channel_control.dart';

abstract class ChannelControlService {
  Future<Result<ChannelControl>> setValue(String key, int seq, double value);
}