import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/app_theme_provider.dart';

class SuraDetailsItem extends StatelessWidget {
  SuraDetailsItem({super.key, required this.content, required this.index});

  String content;
  int index;

  @override
  Widget build(BuildContext context) {
    AppThemeProvider themeProvider = Provider.of<AppThemeProvider>(context);

    return Text(
      '$content (${index + 1})',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(color: themeProvider.getDetailsColor()),
    );
  }
}
