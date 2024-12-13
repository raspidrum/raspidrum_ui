import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import '../../data/repositories/kit_preset.dart';
import '../../model/channel_preset.dart';
import '../../utils/command.dart';
import '../../utils/result.dart';

class ChannelConfigViewModel extends ChangeNotifier {

  ChannelConfigViewModel({
    required KitPresetRepository kitPresetRepository,
    required String channelKey
  }):
    _kitPresetRepository = kitPresetRepository {
      load = Command1(_load)..execute(channelKey);
    }

  final KitPresetRepository _kitPresetRepository;
  final _log = Logger('ChannelConfigViewModel');
  
  late Command1<void, String> load;

  Channel? _channel;
  Channel? get channel => _channel;

  Future<Result> _load(String channelKey) async {
    try {
      final kitPresetResult = await _kitPresetRepository.getPreset();
      switch (kitPresetResult) {
        case Ok<Preset>():
          if (kitPresetResult.value.channels != null) {
            // TODO: сделать поиск по ключу
            _channel = kitPresetResult.value.channels!.first;
          };
          _log.fine('Preset loaded');
        case Error<Preset>():
          _log.warning('Failed to load preset', kitPresetResult.error);
      }
      return kitPresetResult;
    } finally {
      notifyListeners();
    }
  }

}