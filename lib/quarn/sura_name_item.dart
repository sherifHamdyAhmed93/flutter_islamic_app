import 'package:flutter/material.dart';
import 'package:flutter_islamic_app/quarn/sura_details_screen.dart';

import 'sura_model.dart';

class SuraNameWidget extends StatelessWidget {
  SuraNameWidget({super.key, required this.title, required this.index});

  String title;
  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(SuraDetailsScreen.screen_name,
              arguments: SuraModel(name: title, index: index));
        },
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ));
  }
}
