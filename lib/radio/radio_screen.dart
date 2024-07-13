import 'package:flutter/material.dart';

import '../app_colors.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.07,
        vertical: MediaQuery.of(context).size.width * 0.2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/images/radio_logo.png'),
          Text(
            'إذاعة القرآن الكريم',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.skip_previous_rounded,
                    color: AppColors.primaryColor),
                iconSize: 40,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.play_arrow_rounded,
                    color: AppColors.primaryColor),
                iconSize: 70,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.skip_next_rounded,
                    color: AppColors.primaryColor),
                iconSize: 40,
              ),
            ],
          )
        ],
      ),
    );
  }
}
