import 'package:flutter/material.dart';
import 'package:iagapp/constants/themeNotifier.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('General'),
            tiles: <SettingsTile>[
              //Follow system theme switch
              SettingsTile.switchTile(
                onToggle: (value) {
                  final provider =
                      Provider.of<ThemeProvider>(context, listen: false);
                  provider.toggleSystemTheme(value);
                  //changes whether the app follows the system theme
                },
                initialValue: themeProvider.isSystemTheme,
                description: const Text(
                    'Makes the app follow the device dark mode settings.'),
                leading: const Icon(Icons.format_paint),
                title: const Text('Follow System Theme'),
              ),
              //Dark mode switch
              SettingsTile.switchTile(
                enabled: !themeProvider.isSystemTheme,
                //makes sure that this tile is only enabled when the "Follow System Theme" is disabled
                onToggle: (value) {
                  final provider =
                      Provider.of<ThemeProvider>(context, listen: false);
                  provider.toggleDarkTheme(value);
                  //changes whether the app follows the dark theme
                },
                initialValue: themeProvider.isDarkTheme,
                leading: const Icon(Icons.sunny),
                title: const Text('Dark Mode Switch'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
