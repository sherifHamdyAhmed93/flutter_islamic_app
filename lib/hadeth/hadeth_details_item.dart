import 'package:flutter/material.dart';

class HadethDetailsItem extends StatelessWidget {
  HadethDetailsItem({super.key, required this.content});

  String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content)',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
