import '../../utils/result.dart';
import '../../model/control_value.dart' as $model;

//typedef ValueEmitter = $model.ControlValue? Function();
typedef ValueResulter = void Function(Result<$model.ControlValue>);

abstract class ControlHandlerService {
  Future<Result<void>> runSendValues(
      Stream<$model.ControlValue> data, ValueResulter resulter);
}
