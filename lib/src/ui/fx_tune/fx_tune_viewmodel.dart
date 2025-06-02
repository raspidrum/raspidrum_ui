import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import '../../data/repositories/kit_preset_repository.dart';
import '../../model/kit_preset.dart';
import '../../model/control.dart';

class FxTuneViewModel extends ChangeNotifier {

  FxTuneViewModel({
    required this.fxs,
    required KitPresetRepository kitPresetRepository,
  }) : _kitPresetRepository = kitPresetRepository;

  final List<FX> fxs;
  final KitPresetRepository _kitPresetRepository;
  final _log = Logger('FxTuneViewModel');
  
  // Sends a command to set the value on the device via the repository
  void sendValue(Control control, double value) {
    if (fxs.isEmpty) {
      _log.warning('Cannot set value: no FX loaded');
      return;
    }
    
    _kitPresetRepository.setValue(control, value);
  }

}