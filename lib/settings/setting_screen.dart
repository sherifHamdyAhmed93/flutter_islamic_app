import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_islamic_app/app_colors.dart';
import 'package:flutter_islamic_app/theme_popup_screen/theme_screen.dart';
import 'package:provider/provider.dart';

import '../Language_popup_screen/language_screen.dart';
import '../provider/app_language_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    AppLanguageProvider provider = Provider.of<AppLanguageProvider>(context);

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.04,
        vertical: MediaQuery.of(context).size.width * 0.08,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLanguageWidget(provider),
          SizedBox(
            height: 30,
          ),
          _buildThemeWidget()
        ],
      ),
    );
  }

  Widget _buildLanguageWidget(AppLanguageProvider provider) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${AppLocalizations.of(context)!.language}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: _showActionSheetForLanguage,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${provider.getCurrentLanguageName(context)}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 25,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildThemeWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${AppLocalizations.of(context)!.theme}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: _showActionSheetForTheme,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${AppLocalizations.of(context)!.day_mode}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 25,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showActionSheetForLanguage() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageScreen();
        });
  }

  void _showActionSheetForTheme() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ThemeScreen();
        });
  }
}
