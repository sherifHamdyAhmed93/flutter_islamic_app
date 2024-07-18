import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_islamic_app/app_colors.dart';

import '../app_theme.dart';

class AppThemeProvider extends ChangeNotifier {
  ThemeMode currentAppTheme = ThemeMode.light;

  bool isCurrentAppThemeLight() {
    return currentAppTheme == ThemeMode.light;
  }

  ThemeData getCurrentAppTheme() {
    return currentAppTheme == ThemeMode.light
        ? AppTheme.lightTheme
        : AppTheme.darkkTheme;
  }

  String getBackgroundImage() {
    return isCurrentAppThemeLight()
        ? 'assets/images/background_screen.png'
        : 'assets/images/background_screen_dark.png';
  }

  Color getLineColor() {
    return isCurrentAppThemeLight()
        ? AppColors.primaryColor
        : AppColors.darkPrimaryColor;
  }

  Color getSelectionColor() {
    return isCurrentAppThemeLight()
        ? AppColors.primaryColor
        : AppColors.darkPrimaryColor;
  }

  Color getContainerBackground() {
    return isCurrentAppThemeLight()
        ? AppColors.whiteColor
        : AppColors.darkBackgroundColor;
  }

  Color getDetailsColor() {
    return isCurrentAppThemeLight()
        ? AppColors.blackColor
        : AppColors.darkPrimaryColor;
  }

  Color getIconsColor() {
    return isCurrentAppThemeLight()
        ? AppColors.primaryColor
        : AppColors.darkPrimaryColor;
  }

  Color getNavBarBackgrounnd() {
    return isCurrentAppThemeLight()
        ? AppColors.primaryColor
        : AppColors.darkBackgroundColor;
  }

  String getCurrentThemeName(BuildContext context) {
    return isCurrentAppThemeLight()
        ? "${AppLocalizations.of(context)!.day_mode}"
        : "${AppLocalizations.of(context)!.night_mode}";
  }

  void changeAppTheme(ThemeMode mode) {
    if (currentAppTheme == mode) {
      return;
    } else {
      currentAppTheme = mode;
    }
    notifyListeners();
  }
}
