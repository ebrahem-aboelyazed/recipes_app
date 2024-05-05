import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/core/core.dart';
import 'package:recipes_app/l10n/l10n.dart';
import 'package:recipes_app/modules/auth/auth.dart';
import 'package:recipes_app/modules/settings/settings.dart';
import 'package:recipes_app/utils/utils.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    final currentLocale = Localizations.localeOf(context);
    final settingsStorage = getIt.get<SettingsStorage>();
    final isDarkMode = settingsStorage.isDarkMode();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.settings,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: SwitchListTile(
                value: isDarkMode,
                title: Text(context.l10n.dark_mode),
                onChanged: (value) {
                  setState(() {
                    settingsStorage.setMode(isDark: value);
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: ListTile(
                title: Text(context.l10n.language),
                trailing: SegmentedButton<String>(
                  segments: const [
                    ButtonSegment<String>(
                      value: 'en',
                      label: Text('English'),
                    ),
                    ButtonSegment<String>(
                      value: 'ar',
                      label: Text('اللغة العربية'),
                    ),
                  ],
                  selected: {currentLocale.languageCode},
                  onSelectionChanged: (value) async {
                    final newLocale = Locale(value.first);
                    if (currentLocale == newLocale) {
                      return;
                    }
                    await AppLocalizations.delegate.load(newLocale);
                    getIt.get<SettingsStorage>().setLocale(
                          languageCode: newLocale.languageCode,
                          countryCode: newLocale.countryCode,
                        );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () async {
              final cubit = context.read<AuthCubit>();
              await cubit.signOut();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              fixedSize: Size(
                context.widthPercentage(0.8),
                45,
              ),
            ),
            child: Text(
              context.l10n.logout,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
