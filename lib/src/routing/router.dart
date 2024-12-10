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
              path: Routes.kit,
              builder: (context, state) {
                return KitScreen (
                  viewModel: KitViewModel(
                    kitPresetRepository: context.read()
                  )
                );
              }
            ),
            GoRoute(
              path: Routes.mixer,
              builder: (contect, state) {
                return MixerScreen (
                  viewModel: MixerViewModel()
                );
              }
            ),
            GoRoute(
              path: Routes.metronome,
              builder: (contect, state) {
                return MetronomeScreen (
                  viewModel: MetronomeViewModel()
                );
              }
            ),
            GoRoute(
              path: Routes.player,
              builder: (contect, state) {
                return PlayerScreen (
                  viewModel: PlayerViewModel()
                );
              }
            ),
            GoRoute(
              path: Routes.settings,
              builder: (contect, state) {
                return SettingsScreen (
                  viewModel: SettingsViewModel()
                );
              }
            ),
          ]
        )
      ]
  );