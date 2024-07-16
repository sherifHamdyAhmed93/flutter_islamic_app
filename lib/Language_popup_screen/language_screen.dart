import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_islamic_app/app_colors.dart';
import 'package:provider/provider.dart';

import '../provider/app_language_provider.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    AppLanguageProvider provider = Provider.of<AppLanguageProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () {
              provider.changeAppLanguage('en');
            },
            child: provider.isCurrentAppLangEn()
                ? setSelectedItem(AppLocalizations.of(context)!.english)
                : setUnSelectedItem(AppLocalizations.of(context)!.english),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              provider.changeAppLanguage('ar');
            },
            child: provider.isCurrentAppLangEn() == false
                ? setSelectedItem(AppLocalizations.of(context)!.arabic)
                : setUnSelectedItem(AppLocalizations.of(context)!.arabic),
          )
        ],
      ),
    );
  }

  Widget setSelectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColors.primaryColor),
        ),
        Icon(
          Icons.check,
          color: AppColors.primaryColor,
          size: 25,
        )
      ],
    );
  }

  Widget setUnSelectedItem(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
