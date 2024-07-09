import 'package:flutter/material.dart';
import 'package:flutter_islamic_app/hadeth/hadeth_model.dart';

import '../app_colors.dart';
import 'hadeth_details_item.dart';

class HadethDetailsScreen extends StatefulWidget {
  static String screen_name = 'hadeth_details_screen';

  HadethDetailsScreen({super.key});

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;

    return Stack(
      children: [
        Image.asset(
          "assets/images/background_screen.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(
                args.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            body: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.07,
                vertical: MediaQuery.of(context).size.width * 0.2,
              ),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return HadethDetailsItem(content: args.content[index]);
                  },
                  separatorBuilder: (context, _) {
                    return Divider(
                      color: AppColors.primaryColor,
                      thickness: 0,
                    );
                  },
                  itemCount: args.content.length),
            )),
      ],
    );
  }
}
