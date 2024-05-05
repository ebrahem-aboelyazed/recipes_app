import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes_app/utils/utils.dart';

/// Manages settings storage using Hive boxes.
@LazySingleton()
class SettingsStorage {
  /// The settings box for storing application settings.
  Box<dynamic> get settingsBox => Hive.box<dynamic>(AppConstants.settings);

  /// Retrieves the locale name from the settings box.
  ///
  /// If the locale name is not found, returns 'en' as the default locale.
  String get localeName {
    final languageCode = settingsBox.get(AppConstants.languageCode) as String?;
    return languageCode ?? 'en';
  }

  /// Sets the locale in the settings box.
  ///
  /// [languageCode] is the language code to be set.
  /// [countryCode] is the optional country code to be set.
  void setLocale({required String languageCode, String? countryCode}) {
    settingsBox
      ..put(AppConstants.languageCode, languageCode)
      ..put(AppConstants.countryCode, countryCode);
  }

  /// Checks if the dark mode is enabled.
  ///
  /// If dark mode is not found, returns `true` as the default value.
  bool isDarkMode() {
    final mode = settingsBox.get(AppConstants.mode) as bool? ?? true;
    return mode;
  }

  /// Sets the dark mode preference in the settings box.
  ///
  /// [isDark] specifies whether dark mode is enabled.
  void setMode({required bool isDark}) {
    settingsBox.put(AppConstants.mode, isDark);
  }
}
