import 'package:flutter/material.dart';
import 'package:iagapp/constants/theme.dart';
import 'package:iagapp/sharedPreferences.dart';
import 'package:iagapp/themeNotifier.dart';
import 'package:iagapp/welcomePage.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homePage.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: Consumer<ThemeProvider>(
            builder: (context, ThemeProvider provider, child) {
          WidgetsFlutterBinding.ensureInitialized();
          SharedPreferencesUtil.getData<String>('themeMode').then((value) {
            setState(() {
              provider.themeMode = provider.getThemeModeFromString(value);
            });
          });
          return MaterialApp(
            title: 'IAG',
            themeMode: provider.themeMode,
            darkTheme: darkTheme,
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            home: const HomePage(
              title: 'IAG',
            ),
          );
        }),
      );
}
