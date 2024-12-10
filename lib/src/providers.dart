
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:raspidrum_ui/src/data/repositories/kit_preset.dart';

List<SingleChildWidget> get providers {
  return [
    Provider(
      create: (context) => KitPresetRepository(),
    ),
  ];
}