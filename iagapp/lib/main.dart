import 'package:flutter/material.dart';
import 'package:iagapp/constants/theme.dart';
import 'package:iagapp/constants/themeNotifier.dart';
import 'package:iagapp/welcomePage.dart';
import 'package:provider/provider.dart';

import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: 'IAG',
            themeMode: themeProvider.themeMode,
            darkTheme: darkTheme,
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            home: WelcomePage(),
          );
        },
      );
}
