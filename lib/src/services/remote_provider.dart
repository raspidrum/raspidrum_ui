import 'package:grpc/grpc.dart';

import '../connectivity_constants.dart';
import 'proto/channel_control.pbgrpc.dart' as grpc;

class RemoteProvider {

  grpc.ChannelControlClient? _channelControlClient;
  late final ClientChannel _channel;

  RemoteProvider() {
    _createChannel();
  }

  grpc.ChannelControlClient get channelControlClient {
    if (_channelControlClient != null) return _channelControlClient!;
    _channelControlClient = grpc.ChannelControlClient(_channel);
    return _channelControlClient!;
  }

  void _createChannel() {
    _channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }

  void dispose() async {
    await _channel.shutdown();
  }

}