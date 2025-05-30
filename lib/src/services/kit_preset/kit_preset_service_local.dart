import 'package:logging/logging.dart';

import '../../model/channel_preset.dart';
import '../../utils/result.dart';
import 'kit_preset_service.dart';

class KitPresetServiceLocal implements KitPresetService {
  final _logger = Logger('KitPresetServiceLocal');

  @override
  Future<Result<Preset>> getPreset(String id) async {
    try {
      // For testing purposes, return a simple preset
      final preset = Preset(
        key: id,
        name: 'Test Preset',
        description: 'Local test preset',
        channels: [
          Channel(
            key: 'ch1',
            name: 'Channel 1',
            type: ChannelType.sampler,
            volume: BaseControl(
              key: 'vol1',
              name: 'Volume',
              value: 0.8,
              min: 0.0,
              max: 1.0,
            ),
          ),
        ],
      );
      
      _logger.fine('Returning local preset: $id');
      return Result.ok(preset);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
} 