import 'package:raspidrum_ui/src/services/remote_provider.dart';

import '../../utils/result.dart';
import '../../model/control_value.dart' as $model;
import '../proto/channel_control.pbgrpc.dart' as grpc;
import '../control_handler/control_handler_service.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

class ChannelControlRemote implements ControlHandlerService {
  final RemoteProvider _remoteProvider;

  ChannelControlRemote(
    this._remoteProvider,
  );

  grpc.ChannelControlClient get _channelControlClient =>
      _remoteProvider.channelControlClient;

  Stream<grpc.ControlValue> outgoingVals(
      Stream<$model.ControlValue> data) async* {
    await for (final val in data) {
      final reqParam = grpc.ControlValue(
        key: val.key,
        seq: $fixnum.Int64(val.seq),
        value: val.value,
      );
      yield reqParam;
    }
  }

  @override
  Future<Result<void>> runSendValues(
      Stream<$model.ControlValue> data, ValueResulter resulter) async {
    try {
      final call = _channelControlClient.setValue(outgoingVals(data));
      await for (final resp in call) {
        resulter(Result.ok($model.ControlValue(
          key: resp.key,
          seq: resp.seq.toInt(),
          value: resp.value,
        )));
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
    return Result.ok(null);
  }
}
