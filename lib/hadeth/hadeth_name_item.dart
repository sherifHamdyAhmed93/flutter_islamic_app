import 'package:flutter/material.dart';
import 'package:flutter_islamic_app/hadeth/hadeth_model.dart';

class HadethNameWidget extends StatelessWidget {
  HadethNameWidget({super.key, required this.hadeth});

  HadethModel hadeth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Text(
          hadeth.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ));
  }
}
