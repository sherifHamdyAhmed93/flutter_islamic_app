import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${AppLocalizations.of(context)!.english}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Icon(
                Icons.check,
                color: Colors.green,
                size: 25,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${AppLocalizations.of(context)!.arabic}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Icon(
                Icons.check,
                color: Colors.green,
                size: 25,
              )
            ],
          )
        ],
      ),
    );
  }
}
