import 'package:flutter/material.dart';

class SuraNameWidget extends StatelessWidget {
   SuraNameWidget({super.key,required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,);
  }
}
