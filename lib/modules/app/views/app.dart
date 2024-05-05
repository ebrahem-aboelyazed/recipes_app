import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipes_app/core/core.dart';
import 'package:recipes_app/l10n/l10n.dart';
import 'package:recipes_app/modules/settings/settings.dart';
import 'package:recipes_app/routes/routes.dart';
import 'package:recipes_app/utils/utils.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsStorage = getIt.get<SettingsStorage>();
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ValueListenableBuilder<Box<dynamic>>(
        valueListenable: Hive.box<dynamic>(AppConstants.settings).listenable(),
        builder: (context, value, child) {
          final isDarkMode = settingsStorage.isDarkMode();
          return MaterialApp.router(
            routerConfig: getIt.get<AppPages>().router,
            debugShowCheckedModeBanner: false,
            locale: Locale(settingsStorage.localeName),
            theme: isDarkMode ? darkTheme : lightTheme,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}
