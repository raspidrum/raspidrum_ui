

import 'dart:math';
import 'package:logging/logging.dart';

import '../../utils/result.dart';
import 'channel_control_service.dart';
import 'model/channel_control.dart';

class ChannelControlLocal implements ChannelControlService {

  final _logger = Logger('ChannelControlLocal');

  @override
  Future<Result<ChannelControl>> setValue(String key, int seq, double value) async {
    try {
      // timeout in range 20..220 ms
      var timeout = Random().nextInt(200) + 20;    

      await Future.delayed(Duration(milliseconds: timeout));
      final controlRes = ChannelControl(
        key: key, 
        seq: seq, 
        value: value);
      _logger.fine("response: \t $seq \t val: $value \t $timeout ms ");
      return Result.ok(controlRes);
    } on Exception catch (e) {
      return Result.error(e);
    }

  }

}