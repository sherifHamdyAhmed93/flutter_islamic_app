import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_colors.dart';
import 'hadeth_model.dart';
import 'hadeth_name_item.dart';

class HadethScreen extends StatefulWidget {
  HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadethModel> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      readFile();
    }

    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset('assets/images/hadeth_logo.png')),
        Divider(
          color: AppColors.primaryColor,
          thickness: 3,
        ),
        Text(
          'الأحاديث',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Divider(
          color: AppColors.primaryColor,
          thickness: 3,
        ),
        Expanded(
          flex: 3,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return HadethNameWidget(
                hadeth: ahadeth[index],
              );
            },
            separatorBuilder: (context, _) {
              return Divider(
                color: AppColors.primaryColor,
                thickness: 2,
              );
            },
            itemCount: ahadeth.length,
          ),
        )
      ],
    );
  }

  void readFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> list = content.split('#\n');
    print(list.length);
    for (var i = 0; i < list.length; i++) {
      List<String> hadeth = list[i].split('\n');
      String title = hadeth.removeAt(0);
      ahadeth.add(HadethModel(title: title, content: hadeth));
    }
    setState(() {});
  }
}
