import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import '../../data/repositories/controls_repository.dart';
import '../../data/repositories/kit_preset_repository.dart';
import '../../model/channel_preset.dart';
import '../../utils/command.dart';
import '../../utils/result.dart';

class ChannelConfigViewModel extends ChangeNotifier {

  ChannelConfigViewModel({
    required KitPresetRepository kitPresetRepository,
    required ControlsRepository controlRepository,
    required String channelIdx
  }):
    _kitPresetRepository = kitPresetRepository,
    _controlRepository = controlRepository
    {
      load = Command1(_load)..execute(channelIdx);
    }
    

  final KitPresetRepository _kitPresetRepository;
  final ControlsRepository _controlRepository;
  final _log = Logger('ChannelConfigViewModel');
  
  late Command1<void, String> load;

  Channel? _channel;
  Channel? get channel => _channel;

  Future<Result> _load(String channelIdx) async {
    try {
      final kitPresetResult = await _kitPresetRepository.getPreset();
      switch (kitPresetResult) {
        case Ok<Preset>():
          if (kitPresetResult.value.channels != null) {
            var chnls = kitPresetResult.value.channels!;
            //_channel = chnls[int.parse(channelIdx)];
            _channel = chnls.firstWhere( (channel) => channel.key == channelIdx );
          } {}
          _log.fine('Preset loaded');
        case Error<Preset>():
          _log.warning('Failed to load preset', kitPresetResult.error);
      }
      return kitPresetResult;
    } finally {
      notifyListeners();
    }
  }

  // Sends a command to set the value on the device via the repository
  void sendValue(String key, double value) {
    _controlRepository.setValue(key, value);
  }

}
