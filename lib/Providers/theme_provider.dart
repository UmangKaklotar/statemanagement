import 'package:flutter/cupertino.dart';
import 'package:statemanagement/Providers/theme_preference.dart';

class ThemeProvider extends ChangeNotifier {
  late bool _isDark;
  late ThemePreferences _preferences;
  bool get isDark => _isDark;

  ThemeProvider() {
    _isDark = false;
    _preferences = ThemePreferences();
  }

  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}
