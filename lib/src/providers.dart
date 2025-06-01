import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

import 'config/app_config.dart';
import 'data/repositories/controls_handler.dart';
import 'data/repositories/kit_preset_repository.dart';
import 'services/control_handler/control_handler_service_local.dart';
import 'services/control_handler/control_handler_service_remote.dart';
import 'services/kit_preset/kit_preset_service_local.dart';
import 'services/kit_preset/kit_preset_service_remote.dart';
import 'services/remote_provider.dart';

List<SingleChildWidget> get providersRemote {
  final config = kReleaseMode ? AppConfig.production() : AppConfig.development();
  final remoteServices = RemoteProvider(config);
  
  return [
    Provider.value(value: config),
    Provider(
      create: (context) {
        final controlHandler = ControlHandler(ChannelControlRemote(remoteServices));
        return KitPresetRepository(
          KitPresetServiceRemote(remoteServices),
          controlHandler,
        );
      },
    )
  ];
}

List<SingleChildWidget> get providersLocal {
  final config = AppConfig.development();
  
  return [
    Provider.value(value: config),
    Provider(
      create: (context) {
        final controlHandler = ControlHandler(ChannelControlLocal());
        return KitPresetRepository(
          KitPresetServiceLocal(),
          controlHandler,
        );
      },
    )
  ];
}