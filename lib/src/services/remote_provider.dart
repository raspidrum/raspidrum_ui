

import 'package:grpc/grpc.dart';

import '../connectivity_constants.dart';
import 'proto/channel_control.pbgrpc.dart';

class RemoteProvider {

  ChannelControlClient? _channelControlClient;
  late final ClientChannel _channel;

  RemoteProvider() {
    _createChannel();
  }

  ChannelControlClient get channelControlClient {
    if (_channelControlClient != null) return _channelControlClient!;
    _channelControlClient = ChannelControlClient(_channel);
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