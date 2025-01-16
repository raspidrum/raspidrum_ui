class Routes {
  static const kit = '/kit';
  static const mixer = '/mixer';
  static const metronome = '/metronome';
  static const player = '/player';
  static const settings = '/settings';
}

class ChannelRoutes {
  static const channelConfig = 'channelConfig';
  static const channelIdx = 'channelIdx';
  static const channelConfigPath = '/channels/:$channelIdx'; 

  static const channelFx = 'channelFx';
  static const channelFxPath = '/fxs';
}

class InstrumentRoutes {
  static const instrId = 'instrId';
  static const instrPath = '/kit/instruments/:$instrId';

  static const instrTune = 'instrTune';
  static const instrTunePath = '$instrPath/tunes';

  static const layerId = 'layerId';
  static const layerFx = 'layerFx';
  static const layerFxPath = '$instrPath/layers/:$layerId/fxs';
}