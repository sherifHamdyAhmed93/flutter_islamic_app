import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

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
                'Light',
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
                'Dark',
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
