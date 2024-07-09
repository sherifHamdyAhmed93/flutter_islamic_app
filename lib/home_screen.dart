import 'package:flutter/material.dart';
import 'package:flutter_islamic_app/app_colors.dart';
import 'package:flutter_islamic_app/hadeth/hadeth_screen.dart';
import 'package:flutter_islamic_app/quarn/quran_screen.dart';
import 'package:flutter_islamic_app/radio/radio_screen.dart';
import 'package:flutter_islamic_app/sebha/sebha.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  List<Widget> tabs = [QuranScreen(),HadethScreen(),SebhaScreen(),RadioScreen()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/background_screen.png",width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(title: Text('Islami',style: Theme.of(context).textTheme.titleLarge,),),
          body: tabs[selectedIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: AppColors.primaryColor),
            child: BottomNavigationBar(
              currentIndex:selectedIndex ,
              onTap: (value){
                selectedIndex = value;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),label: 'Quran'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/hadath.png")),label: 'Hadath'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: 'Sebha'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),label: 'Radio'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
