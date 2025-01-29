import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart' as $log;
import 'package:provider/provider.dart';
import 'package:raspidrum_ui/src/providers.dart';
import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  $log.hierarchicalLoggingEnabled = true;
  $log.Logger.root.level = $log.Level.INFO;
  $log.Logger.root.onRecord.listen((record) {
    // ignore: avoid_print
    print('${record.message}');
  });

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      devices: <DeviceInfo>[ 
        buildGenericTabletDevice(
          platform: TargetPlatform.linux,
          name: 'RaspiDrum', 
          id: 'RaspiDrum',
          screenSize: Size(800, 480), 
          pixelRatio: 1.0,
        ),
      ],
      builder: (context) {
        return MultiProvider (
          providers: providersLocal,
          child: App(settingsController: settingsController),
        );
      }
    )
  );
}
