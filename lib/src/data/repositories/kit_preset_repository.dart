import 'package:raspidrum_ui/src/model/kit_preset.dart' as preset;
import 'package:raspidrum_ui/src/utils/result.dart';
import 'package:raspidrum_ui/src/services/kit_preset/kit_preset_service.dart';
import 'package:raspidrum_ui/src/data/repositories/controls_handler.dart';
import 'package:raspidrum_ui/src/model/control.dart';

// Repository is used for working with presets:
//   - get preset list 
//   - load preset. With loading preset in sampler (configure channels and FX plugins) and settings mixer controls
//   - store changed controls values in preset. With loading same as load preset
//   - configure new preset: channels, instruments, layers, fx, ...

class KitPresetRepository {
  final KitPresetService _service;
  final ControlHandler _controlHandler;
  preset.Preset? _cachedPreset;

  KitPresetRepository(this._service, this._controlHandler);

  Future<Result<preset.Preset>> getPreset() async {
    // TODO: get it in input parameter
    final id = 1;
    // Return cached preset if it exists and has the same ID
    if (_cachedPreset != null && _cachedPreset!.id == id) {
      return Result.ok(_cachedPreset!);
    }

    // Otherwise fetch from service
    final result = await _service.getPreset(id);
    if (result is Ok<preset.Preset>) {
      _cachedPreset = result.value;
    }
    return result;
  }

  // Sets value for a control in the preset and updates it through ControlHandler
  void setValue(Control control, double value) {
    if (_cachedPreset == null) {
      throw Exception('No preset loaded');
    }
    
    // Update the control value in the preset
    control.setValue(value);
    
    // Update the value through ControlHandler
    _controlHandler.setValue(control.key, value);
  }

  void dispose() {
    // Dispose of any resources if needed
  }
}