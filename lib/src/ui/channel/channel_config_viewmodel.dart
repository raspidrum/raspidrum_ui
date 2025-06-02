import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import '../../data/repositories/kit_preset_repository.dart';
import '../../model/kit_preset.dart';
import '../../model/control.dart';
import '../../utils/command.dart';
import '../../utils/result.dart';

class ChannelConfigViewModel extends ChangeNotifier {

  ChannelConfigViewModel({
    required KitPresetRepository kitPresetRepository,
    required String channelIdx
  }):
    _kitPresetRepository = kitPresetRepository
    {
      load = Command1(_load)..execute(channelIdx);
    }
    

  final KitPresetRepository _kitPresetRepository;
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
  void sendValue(Control control, double value) {
    if (_channel == null) {
      _log.warning('Cannot set value: no channel loaded');
      return;
    }
    
    _kitPresetRepository.setValue(control, value);
  }
}
