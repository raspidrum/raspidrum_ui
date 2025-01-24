

import 'package:raspidrum_ui/src/services/remote_provider.dart';

import '../../utils/result.dart';
import '../proto/channel_control.pbgrpc.dart';
import 'channel_control_service.dart';
import 'model/channel_control.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

class ChannelControlRemote implements ChannelControlService {

  final RemoteProvider _remoteProvider;

  ChannelControlRemote(
    this._remoteProvider,
  );

  ChannelControlClient get _channelControlClient => _remoteProvider.channelControlClient;

  @override
  Future<Result<ChannelControl>> setValue(String key, int seq, double value) async {
    try {
      final reqParams = ControlValue(
        key: key,
        seq: $fixnum.Int64(seq),
        value: value,
      );
      final resp = await _channelControlClient.setValue(reqParams);
      final controlRes = ChannelControl(
        key: resp.key, 
        seq: resp.seq.toInt(), 
        value: resp.value);
      return Result.ok(controlRes);
    } on Exception catch (e) {
      return Result.error(e);
    }

  }

}