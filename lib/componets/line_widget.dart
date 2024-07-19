import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/app_theme_provider.dart';

class LineWidget extends StatelessWidget {
  LineWidget({super.key, this.thickness = 3});

  double thickness;

  @override
  Widget build(BuildContext context) {
    AppThemeProvider themeProvider = Provider.of<AppThemeProvider>(context);

    return Divider(
      color: themeProvider.getLineColor(),
      thickness: thickness,
    );
  }
}
