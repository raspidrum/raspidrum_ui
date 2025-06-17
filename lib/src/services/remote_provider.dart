import 'package:grpc/grpc.dart';
import 'package:logging/logging.dart';

import '../config/app_config.dart';
import 'proto/channel_control.pbgrpc.dart' as grpc;

class RemoteProvider {
  final AppConfig _config;
  grpc.ChannelControlClient? _channelControlClient;
  late final ClientChannel _channel;
  final _log = Logger('RemoteProvider');

  RemoteProvider(this._config) {
    _createChannel();
  }

  grpc.ChannelControlClient get channelControlClient {
    if (_channelControlClient != null) return _channelControlClient!;
    _channelControlClient = grpc.ChannelControlClient(_channel);
    return _channelControlClient!;
  }

  ClientChannel get channel => _channel;

  void _createChannel() {
    _channel = ClientChannel(
      _config.grpcHost,
      port: _config.grpcPort,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
      channelShutdownHandler: () => _log.fine("connection shutting down"),
    );
    _channel.onConnectionStateChanged.listen(
      (data) => _log.fine("connection state: ${data.name}"),
      onError: (error) => _log.fine("connection error: $error"),
      onDone: () => _log.fine("connection closed"),
    );
  }

  void dispose() async {
    await _channel.shutdown();
  }
}