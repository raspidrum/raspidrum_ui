import 'package:grpc/grpc.dart';
import 'package:raspidrum_ui/src/model/channel_preset.dart';
import 'package:raspidrum_ui/src/utils/result.dart';
import 'package:raspidrum_ui/src/services/proto/preset.pbgrpc.dart' as grpc;
import 'package:fixnum/fixnum.dart';

// Repository is used for working with presets:
//   - get preset list 
//   - load preset. With loading preset in sampler (configure channels and FX plugins) and settings mixer controls
//   - store changed controls values in preset. With loading same as load preset
//   - configure new preset: channels, instruments, layers, fx, ...

class KitPresetRepository {
  final ClientChannel _channel;
  final grpc.KitPresetClient _client;

  // TODO: add host and port from config
  KitPresetRepository({String host = 'localhost', int port = 50051}) 
      : _channel = ClientChannel(
          host,
          port: port,
          options: const ChannelOptions(
            credentials: ChannelCredentials.insecure(),
          ),
        ),
        _client = grpc.KitPresetClient(
          ClientChannel(
            host,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  Future<Result<Preset>> getPreset() async {
    try {
      final response = await _client.loadPreset(grpc.LoadPresetRequest(presetId: Int64(1)));
      return Result.ok(_mapGrpcPresetToModel(response.preset));
    } catch (e) {
      return Result.error(Exception('Failed to load preset: $e'));
    }
  }

  void dispose() {
    _channel.shutdown();
  }

  Preset _mapGrpcPresetToModel(grpc.Preset grpcPreset) {
    return Preset(
      key: grpcPreset.key,
      name: grpcPreset.name,
      description: grpcPreset.hasDescription() ? grpcPreset.description : null,
      channels: grpcPreset.channels.map(_mapGrpcChannelToModel).toList(),
    );
  }

  Channel _mapGrpcChannelToModel(grpc.Channel grpcChannel) {
    return Channel(
      key: grpcChannel.key,
      name: grpcChannel.name,
      type: _mapGrpcChannelType(grpcChannel.type),
      volume: _mapGrpcBaseControlToModel(grpcChannel.volume),
      pan: grpcChannel.hasPan() ? _mapGrpcBaseControlToModel(grpcChannel.pan) : null,
      fxs: grpcChannel.fxs.map(_mapGrpcFXToModel).toList(),
      instruments: grpcChannel.instruments.map(_mapGrpcInstrumentToModel).toList(),
    );
  }

  Instrument _mapGrpcInstrumentToModel(grpc.Instrument grpcInstrument) {
    return Instrument(
      key: grpcInstrument.key,
      name: grpcInstrument.name,
      volume: grpcInstrument.hasVolume() ? _mapGrpcBaseControlToModel(grpcInstrument.volume) : null,
      pan: grpcInstrument.hasPan() ? _mapGrpcBaseControlToModel(grpcInstrument.pan) : null,
      tunes: grpcInstrument.tunes.map(_mapGrpcFXToModel).toList(),
      layers: grpcInstrument.layers.map(_mapGrpcLayerToModel).toList(),
    );
  }

  Layer _mapGrpcLayerToModel(grpc.Layer grpcLayer) {
    return Layer(
      key: grpcLayer.key,
      name: grpcLayer.name,
      volume: grpcLayer.hasVolume() ? _mapGrpcBaseControlToModel(grpcLayer.volume) : null,
      pan: grpcLayer.hasPan() ? _mapGrpcBaseControlToModel(grpcLayer.pan) : null,
      fxs: grpcLayer.fxs.map(_mapGrpcFXToModel).toList(),
    );
  }

  BaseControl _mapGrpcBaseControlToModel(grpc.BaseControl grpcControl) {
    return BaseControl(
      key: grpcControl.key,
      name: grpcControl.name,
      value: grpcControl.value,
      min: grpcControl.hasMin() ? grpcControl.min : null,
      max: grpcControl.hasMax() ? grpcControl.max : null,
    );
  }

  FX _mapGrpcFXToModel(grpc.FX grpcFX) {
    return FX(
      key: grpcFX.key,
      name: grpcFX.name,
      order: grpcFX.order,
      params: grpcFX.params.map(_mapGrpcFXParamToModel).toList(),
    );
  }

  FXParam _mapGrpcFXParamToModel(grpc.FXParam grpcParam) {
    return FXParam(
      key: grpcParam.key,
      name: grpcParam.name,
      order: grpcParam.order,
      type: _mapGrpcFXParamType(grpcParam.type),
      min: grpcParam.hasMin() ? grpcParam.min : null,
      max: grpcParam.hasMax() ? grpcParam.max : null,
      divisions: grpcParam.hasDivisions() ? grpcParam.divisions : null,
      discreteVals: grpcParam.discreteVals.map(_mapGrpcFXParamDiscreteValToModel).toList(),
      value: grpcParam.value,
    );
  }

  FXParamDiscreteVal _mapGrpcFXParamDiscreteValToModel(grpc.FXParamDiscreteVal grpcVal) {
    return FXParamDiscreteVal(
      name: grpcVal.hasName() ? grpcVal.name : null,
      val: grpcVal.val,
    );
  }

  ChannelType _mapGrpcChannelType(grpc.ChannelType type) {
    switch (type) {
      case grpc.ChannelType.CHANNEL_TYPE_UNSPECIFIED:
        return ChannelType.unspecified;
      case grpc.ChannelType.CHANNEL_TYPE_GLOBAL:
        return ChannelType.global;
      case grpc.ChannelType.CHANNEL_TYPE_SAMPLER:
        return ChannelType.sampler;
      case grpc.ChannelType.CHANNEL_TYPE_INSTRUMENT:
        return ChannelType.instrument;
      case grpc.ChannelType.CHANNEL_TYPE_MIXER:
        return ChannelType.mixer;
      case grpc.ChannelType.CHANNEL_TYPE_PLAYER:
        return ChannelType.player;
    }
    return ChannelType.unspecified;
  }

  FXParamType _mapGrpcFXParamType(grpc.FXParamType type) {
    switch (type) {
      case grpc.FXParamType.FX_PARAM_TYPE_UNSPECIFIED:
        return FXParamType.unspecified;
      case grpc.FXParamType.FX_PARAM_TYPE_RANGE:
        return FXParamType.range;
      case grpc.FXParamType.FX_PARAM_TYPE_FIXED:
        return FXParamType.fixed;
      case grpc.FXParamType.FX_PARAM_TYPE_BOOLEAN:
        return FXParamType.boolean;
    }
    return FXParamType.unspecified;
  }
}