import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switch_theme/provider/theme_changer.dart';
import 'package:switch_theme/screen/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //
    return ChangeNotifierProvider(
        create: (_) => ThemeChanger(),
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              primarySwatch: Colors.pink,
            ),
            home: const DarkThemeScreen(),
          );
        }));
  }
}
