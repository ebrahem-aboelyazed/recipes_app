import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipes_app/core/core.dart';

/// A helper class for configuring the application
class AppHelper {
  const AppHelper._();

  /// Configures the application.
  ///
  /// Ensures the Flutter widgets are initialized, initializes Firebase,
  /// and configure dependencies
  static Future<void> configureApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await configureDependencies();
    await _initHive();
  }

  /// Initializes the Hive database.
  ///
  /// Initializes Hive database and its boxes for caching and settings.
  static Future<void> _initHive() async {
    final hiveManager = getIt.get<HiveManager>();
    await Hive.initFlutter();
    await hiveManager.initializeCacheBox();
    await hiveManager.initializeSettingsBox();
    await hiveManager.initializeFavoritesBox();
  }
}
