import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import '../../data/repositories/kit_preset_repository.dart';
import '../../model/kit_preset.dart';
import '../../utils/result.dart';
import '../../utils/command.dart';
import '../../model/control.dart';

class KitViewModel extends ChangeNotifier {

  KitViewModel({
    required KitPresetRepository kitPresetRepository,
  }):
    _kitPresetRepository = kitPresetRepository {
      load = Command0(_load)..execute();
    }

  final KitPresetRepository _kitPresetRepository;
  final _log = Logger('KitViewModel');

  late Command0 load;

  Preset? _preset;
  Preset? get preset => _preset;

  Future<Result> _load() async {
    try {
      final kitPresetResult = await _kitPresetRepository.getPreset();
      switch (kitPresetResult) {
        case Ok<Preset>():
          _preset = kitPresetResult.value;
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
    if (_preset == null) {
      _log.warning('Cannot set value: no preset loaded');
      return;
    }
    
    _kitPresetRepository.setValue(control, value);
  }

}