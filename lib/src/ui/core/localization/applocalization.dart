import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Simple Localizations similar to
/// https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization#an-alternative-class-for-the-apps-localized-resources
class AppLocalization {
  static AppLocalization of(BuildContext context) {
    return Localizations.of(context, AppLocalization);
  }

  static const _strings = <String, String> {
    'errorWhileLoadingKitPreset': 'Error while loading kit preset',
    'tryAgain': 'Try again',
  };

  // If string for "label" does not exist, will show "[LABEL]"
  static String _get(String label) =>
      _strings[label] ?? '[${label.toUpperCase()}]';

  String get errorWhileLoadingKitPreset => _get('errorWhileLoadingKitPreset');
  String get tryAgain => _get('tryAgain');

}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  @override
  bool isSupported(Locale locale) => locale.languageCode == 'en';

  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture(AppLocalization());
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) =>
      false;
}