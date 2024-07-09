import 'package:flutter/material.dart';

class SuraDetailsItem extends StatelessWidget {
  SuraDetailsItem({super.key, required this.content, required this.index});

  String content;
  int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content (${index + 1})',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
