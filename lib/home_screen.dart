import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_islamic_app/hadeth/hadeth_screen.dart';
import 'package:flutter_islamic_app/quarn/quran_screen.dart';
import 'package:flutter_islamic_app/radio/radio_screen.dart';
import 'package:flutter_islamic_app/sebha/sebha.dart';
import 'package:flutter_islamic_app/settings/setting_screen.dart';
import 'package:provider/provider.dart';

import 'provider/app_theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    AppThemeProvider themeProvider = Provider.of<AppThemeProvider>(context);

    return Stack(
      children: [
        Image.asset(
          themeProvider.getBackgroundImage(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${AppLocalizations.of(context)!.app_title}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: tabs[selectedIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: themeProvider.getNavBarBackgrounnd()),
            child: BottomNavigationBar(
              currentIndex:selectedIndex ,
              onTap: (value){
                selectedIndex = value;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/quran.png")),
                    label: '${AppLocalizations.of(context)!.quran_tab}'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/hadath.png")),
                    label: '${AppLocalizations.of(context)!.hadiths_tab}'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                    label: '${AppLocalizations.of(context)!.tasbeeh_tab}'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio.png")),
                    label: '${AppLocalizations.of(context)!.radio_tab}'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: '${AppLocalizations.of(context)!.settings_tab}'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
