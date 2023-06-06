import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

import '../../main.dart';

class ThemeSwitcherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      saveThemesOnChange: true,
      loadThemeOnInit: true,
      themes: [
        AppTheme.light(),
        AppTheme.dark(),
      ],
      child: MaterialApp(
        theme: ThemeProvider.themeOf(context).data,
        home: HomeScreen(),
      ),
    );
  }
}