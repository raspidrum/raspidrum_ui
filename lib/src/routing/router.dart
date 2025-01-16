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

import '../model/channel_preset.dart';
import '../ui/channel/channel_config.dart';
import '../ui/channel/channel_config_viewmodel.dart';
import '../ui/fx_tune/fx_tune.dart';
import '../ui/fx_tune/fx_tune_viewmodel.dart';

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
                pageBuilder: (BuildContext context, GoRouterState state) =>
                    buildPageWithoutAnimation<void>(
                      context: context,
                      state: state,
                      child: KitScreen(
                          viewModel: KitViewModel(
                              kitPresetRepository: context.read())),
                    ),
                routes: [
                  GoRoute( //ChannelConfig
                    name: ChannelRoutes.channelConfig,
                    path: ChannelRoutes.channelConfigPath,
                    pageBuilder: (BuildContext context, GoRouterState state) =>
                        buildPageWithoutAnimation<void>(
                      context: context,
                      state: state,
                      child: ChannelConfigScreen(
                        viewModel: ChannelConfigViewModel(
                            kitPresetRepository: context.read(),
                            channelIdx: state
                                .pathParameters[ChannelRoutes.channelIdx]!),
                      ),
                    ),
                    routes: [
                      GoRoute( //ChannelFxs
                        name: ChannelRoutes.channelFx,
                        path: ChannelRoutes.channelFxPath,
                        pageBuilder: (BuildContext context,
                                GoRouterState state) =>
                            buildPageWithoutAnimation<void>(
                                context: context,
                                state: state,
                                child: FxTuneScreen(
                                    viewModel: FxTuneViewModel(
                                        fxs: GoRouterState.of(context).extra!
                                            as List<FX>))),
                      ),
                      GoRoute( //InstrumentsTunes
                        name: InstrumentRoutes.instrTune,
                        path: InstrumentRoutes.instrTunePath,
                        pageBuilder: (BuildContext context,
                                GoRouterState state) =>
                            buildPageWithoutAnimation<void>(
                                context: context,
                                state: state,
                                child: FxTuneScreen(
                                    viewModel: FxTuneViewModel(
                                        fxs: GoRouterState.of(context).extra!
                                            as List<FX>))),
                      ),
                      GoRoute( //LayerFxs
                        name: InstrumentRoutes.layerFx,
                        path: InstrumentRoutes.layerFxPath,
                        pageBuilder: (BuildContext context,
                                GoRouterState state) =>
                            buildPageWithoutAnimation<void>(
                                context: context,
                                state: state,
                                child: FxTuneScreen(
                                    viewModel: FxTuneViewModel(
                                        fxs: GoRouterState.of(context).extra!
                                            as List<FX>))),
                      ),
                    ],
                  ),
                ]),
            GoRoute(
              name: Routes.mixer,
              path: Routes.mixer,
              pageBuilder: (BuildContext context, GoRouterState state) => buildPageWithoutAnimation<void>(
                context: context, 
                state: state, 
                child: MixerScreen (
                  viewModel: MixerViewModel()
                ),
              ),
            ),
            GoRoute(
              name: Routes.metronome,
              path: Routes.metronome,
              pageBuilder: (BuildContext context, GoRouterState state) => buildPageWithoutAnimation<void>(
                context: context, 
                state: state, 
                child: MetronomeScreen (
                  viewModel: MetronomeViewModel()
                ),
              ),
            ),
            GoRoute(
              name: Routes.player,
              path: Routes.player,
              pageBuilder: (BuildContext context, GoRouterState state) => buildPageWithoutAnimation<void>(
                context: context, 
                state: state, 
                child: PlayerScreen (
                  viewModel: PlayerViewModel()
                ),
              ),
            ),
            GoRoute(
              name: Routes.settings,
              path: Routes.settings,
              pageBuilder: (BuildContext context, GoRouterState state) => buildPageWithoutAnimation<void>(
                context: context, 
                state: state, 
                child: SettingsScreen (
                  viewModel: SettingsViewModel()
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
        transitionDuration: Duration(milliseconds: 200),
        reverseTransitionDuration: Duration(milliseconds: 200),
    );
  }


