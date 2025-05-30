import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

import 'config/app_config.dart';
import 'data/repositories/controls_repository.dart';
import 'data/repositories/kit_preset_repository.dart';
import 'services/channel_control/channel_control_service_local.dart';
import 'services/channel_control/channel_control_service_remote.dart';
import 'services/kit_preset/kit_preset_service_local.dart';
import 'services/kit_preset/kit_preset_service_remote.dart';
import 'services/remote_provider.dart';

List<SingleChildWidget> get providersRemote {
  final config = kReleaseMode ? AppConfig.production() : AppConfig.development();
  final remoteServices = RemoteProvider(config);
  
  return [
    Provider.value(value: config),
    Provider(
      create: (context) => KitPresetRepository(KitPresetServiceRemote(remoteServices)),
    ),
    Provider(
      create: (context) => ControlsRepository(ChannelControlRemote(remoteServices)),
    )
  ];
}

List<SingleChildWidget> get providersLocal {
  final config = AppConfig.development();
  
  return [
    Provider.value(value: config),
    Provider(
      create: (context) => KitPresetRepository(KitPresetServiceLocal()),
    ),
    Provider(
      create: (context) => ControlsRepository(ChannelControlLocal()),
    )
  ];
}