import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:raspidrum_ui/src/routing/routes.dart';
import 'package:raspidrum_ui/src/ui/kit/kit.dart';
import 'package:raspidrum_ui/src/ui/kit/kit_viewmodel.dart';
import 'package:raspidrum_ui/src/ui/metronome/metr.dart';
import 'package:raspidrum_ui/src/ui/metronome/metr_viewmodel.dart';
import 'package:raspidrum_ui/src/ui/mixer/mixer.dart';
import 'package:raspidrum_ui/src/ui/mixer/mixer_viewmodel.dart';
import 'package:raspidrum_ui/src/ui/navigation/navigation.dart';
import 'package:raspidrum_ui/src/ui/player/player.dart';
import 'package:raspidrum_ui/src/ui/player/player_viewmodel.dart';
import 'package:raspidrum_ui/src/ui/settings/settings.dart';
import 'package:raspidrum_ui/src/ui/settings/settings_viewmodel.dart';

import '../ui/channel/channel_config.dart';
import '../ui/channel/channel_config_viewmodel.dart';

final GoRouter router = GoRouter(
      routerNeglect: true, // disable browser history tracking
      initialLocation: Routes.kit,
      routes: <RouteBase>[
        ShellRoute(
          builder: (BuildContext context, GoRouterState state, Widget child) {
            return NaviBar(child: child);
          },
          routes: <RouteBase>[
            GoRoute(
              name: Routes.kit,
              path: Routes.kit,
              //builder: (context, state) {
              //  return KitScreen (
              //    viewModel: KitViewModel(
              //      kitPresetRepository: context.read()
              //    )
              //  );
              //},
              pageBuilder: (BuildContext context, GoRouterState state) => buildPageWithoutAnimation<void>(
                context: context, 
                state: state, 
                child: KitScreen (
                  viewModel: KitViewModel(
                    kitPresetRepository: context.read()
                  )
                ),
              ),
            ),
            GoRoute(
              name: Routes.mixer,
              path: Routes.mixer,
              builder: (contect, state) {
                return MixerScreen (
                  viewModel: MixerViewModel()
                );
              }
            ),
            GoRoute(
              name: Routes.metronome,
              path: Routes.metronome,
              builder: (contect, state) {
                return MetronomeScreen (
                  viewModel: MetronomeViewModel()
                );
              }
            ),
            GoRoute(
              name: Routes.player,
              path: Routes.player,
              builder: (contect, state) {
                return PlayerScreen (
                  viewModel: PlayerViewModel()
                );
              }
            ),
            GoRoute(
              name: Routes.settings,
              path: Routes.settings,
              builder: (contect, state) {
                return SettingsScreen (
                  viewModel: SettingsViewModel()
                );
              }
            ),
            GoRoute(
              name: ChannelRoutes.channelConfig,
              path: ChannelRoutes.channelConfigPath,
              builder: (context, state) {
                return ChannelConfigScreen(
                  viewModel: ChannelConfigViewModel(
                    kitPresetRepository: context.read(),
                    channelKey: state.pathParameters[ChannelRoutes.channelKey]!
                  ),
                );
              },
              pageBuilder: (BuildContext context, GoRouterState state) => buildPageWithoutAnimation<void>(
                context: context, 
                state: state, 
                child: ChannelConfigScreen(
                  viewModel: ChannelConfigViewModel(
                    kitPresetRepository: context.read(),
                    channelKey: state.pathParameters[ChannelRoutes.channelKey]!
                  ),
                ),
              ),
            ),
          ]
        )
      ]
  );


// Utility function for disable transition animation
CustomTransitionPage<T> buildPageWithoutAnimation<T>({
    required BuildContext context, 
    required GoRouterState state, 
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (
        context, 
        animation, 
        secondaryAnimation, 
        child
        ) => child,
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
    );
  }


