import 'dart:math';
import 'package:logging/logging.dart';

import '../../utils/result.dart';
import '../../model/control_value.dart' as $model;
import 'control_handler_service.dart';

class ChannelControlLocal implements ControlHandlerService {

  final _logger = Logger('ChannelControlLocal');

  @override
  Future<Result<void>> runSendValues(
      Stream<$model.ControlValue> data, ValueResulter resulter) async {
    try {
      await for (final resp in data) {
        var timeout = Random().nextInt(2000) + 20;
        await Future.delayed(Duration(milliseconds: timeout));
        _logger.fine(
            "response: \t ${resp.key} \t seq: ${resp.seq} \t val: ${resp.value} \t $timeout ms ");
        resulter(Result.ok(resp));
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
    return Result.ok(null);
  }
}