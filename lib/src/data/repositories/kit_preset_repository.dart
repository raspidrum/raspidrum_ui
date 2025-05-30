import 'package:raspidrum_ui/src/model/channel_preset.dart';
import 'package:raspidrum_ui/src/utils/result.dart';
import 'package:raspidrum_ui/src/services/kit_preset/kit_preset_service.dart';

// Repository is used for working with presets:
//   - get preset list 
//   - load preset. With loading preset in sampler (configure channels and FX plugins) and settings mixer controls
//   - store changed controls values in preset. With loading same as load preset
//   - configure new preset: channels, instruments, layers, fx, ...

class KitPresetRepository {
  final KitPresetService _service;
  Preset? _cachedPreset;

  KitPresetRepository(this._service);

  Future<Result<Preset>> getPreset() async {
    // TODO: get it in input parameter
    final id = '1';
    // Return cached preset if it exists and has the same ID
    if (_cachedPreset != null && _cachedPreset!.key == id) {
      return Result.ok(_cachedPreset!);
    }

    // Otherwise fetch from service
    final result = await _service.getPreset(id);
    if (result is Ok<Preset>) {
      _cachedPreset = result.value;
    }
    return result;
  }

  void dispose() {
    // Dispose of any resources if needed
  }
}