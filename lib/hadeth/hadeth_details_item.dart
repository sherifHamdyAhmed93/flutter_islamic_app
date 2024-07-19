import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/app_theme_provider.dart';

class HadethDetailsItem extends StatelessWidget {
  HadethDetailsItem({super.key, required this.content});

  String content;

  @override
  Widget build(BuildContext context) {
    AppThemeProvider themeProvider = Provider.of<AppThemeProvider>(context);

    return Text(
      '$content)',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: themeProvider.getDetailsColor()));
  }
}
