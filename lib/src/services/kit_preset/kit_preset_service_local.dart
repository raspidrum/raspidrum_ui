import 'package:logging/logging.dart';
import 'package:flutter/services.dart';

import '../../model/kit_preset.dart';
import '../../utils/result.dart';
import 'kit_preset_service.dart';

class KitPresetServiceLocal implements KitPresetService {
  final _logger = Logger('KitPresetServiceLocal');
  final String _presetPath;

  KitPresetServiceLocal({String? presetPath}) 
      : _presetPath = presetPath ?? 'testdata/stubs/load_preset/kit_preset_1.json';

  @override
  Future<Result<Preset>> getPreset(int id) async {
    try {
      final jsonString = await rootBundle.loadString(_presetPath);
      final preset = PresetMapper.fromJson(jsonString);
      _logger.fine('Loaded preset from file: $id');
      return Result.ok(preset);
    } on Exception catch (e) {
      _logger.severe('Error loading preset: $e');
      return Result.error(e);
    }
  }
} 