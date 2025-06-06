import '../../model/kit_preset.dart';
import '../../utils/result.dart';

abstract class KitPresetService {
  /// Retrieves a preset by its ID
  Future<Result<Preset>> getPreset(int id);
} 