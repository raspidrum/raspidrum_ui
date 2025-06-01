import 'package:raspidrum_ui/src/services/remote_provider.dart';

import '../../utils/result.dart';
import '../../model/control_value.dart';
import '../proto/channel_control.pbgrpc.dart' as grpc;
import '../control_handler/control_handler_service.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

class ChannelControlRemote implements ControlHandlerService {

  final RemoteProvider _remoteProvider;

  ChannelControlRemote(
    this._remoteProvider,
  );

  grpc.ChannelControlClient get _channelControlClient => _remoteProvider.channelControlClient;

  @override
  Future<Result<ControlValue>> setValue(String key, int seq, double value) async {
    try {
      final reqParams = grpc.ControlValue(
        key: key,
        seq: $fixnum.Int64(seq),
        value: value,
      );
      final resp = await _channelControlClient.setValue(reqParams);
      final controlRes = ControlValue(
        key: resp.key, 
        seq: resp.seq.toInt(), 
        value: resp.value);
      return Result.ok(controlRes);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

}