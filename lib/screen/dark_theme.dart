import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_changer.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({Key? key}) : super(key: key);

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
