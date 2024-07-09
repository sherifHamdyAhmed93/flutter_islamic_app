import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_islamic_app/quarn/sura_details_item.dart';
import 'package:flutter_islamic_app/quarn/sura_model.dart';

import '../app_colors.dart';

class SuraDetailsScreen extends StatefulWidget {
  static String screen_name = 'sura_details_screen';

  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> lines = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;

    if (lines.isEmpty) {
      readFile(args.index);
    }

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
                args.name,
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
                    return SuraDetailsItem(content: lines[index], index: index);
                  },
                  separatorBuilder: (context, _) {
                    return Divider(
                      color: AppColors.primaryColor,
                      thickness: 0,
                    );
                  },
                  itemCount: lines.length),
            )),
      ],
    );
  }

  void readFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    this.lines = lines;
    setState(() {});
  }
}
