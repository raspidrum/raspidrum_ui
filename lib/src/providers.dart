
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';

import 'data/repositories/controls_repository.dart';
import 'data/repositories/kit_preset_repository.dart';
import 'services/channel_control/channel_control_service_local.dart';
import 'services/channel_control/channel_control_service_remote.dart';
import 'services/remote_provider.dart';

List<SingleChildWidget> get providersRemote {
  var remoteServices = RemoteProvider();
  return [
    Provider(
      create: (context) => KitPresetRepository(),
    ),
    Provider(
      create: (context) => ControlsRepository(ChannelControlRemote(remoteServices)),
    )
  ];
}


List<SingleChildWidget> get providersLocal {
  return [
    Provider(
      create: (context) => KitPresetRepository(),
    ),
    Provider(
      create: (context) => ControlsRepository(ChannelControlLocal()),
    )
  ];
}