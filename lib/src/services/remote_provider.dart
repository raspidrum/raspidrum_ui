import 'package:grpc/grpc.dart';

import '../config/app_config.dart';
import 'proto/channel_control.pbgrpc.dart' as grpc;

class RemoteProvider {
  final AppConfig _config;
  grpc.ChannelControlClient? _channelControlClient;
  late final ClientChannel _channel;

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
    );
  }

  void dispose() async {
    await _channel.shutdown();
  }
}