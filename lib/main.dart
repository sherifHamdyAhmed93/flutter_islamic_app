import 'package:flutter/material.dart';
import 'package:flutter_islamic_app/app_theme.dart';
import 'package:flutter_islamic_app/home_screen.dart';
import 'package:flutter_islamic_app/quarn/sura_details_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'hadeth/hadeth_details_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {
    super.initState();
    initialization();
  }

void initialization() async {
  // This is where you can initialize the resources needed by your app while
  // the splash screen is displayed.  Remove the following example because
  // delaying the user experience is a bad design practice!
  // ignore_for_file: avoid_print
  print('ready in 3...');
  await Future.delayed(const Duration(seconds: 1));
  print('ready in 2...');
  await Future.delayed(const Duration(seconds: 1));
  print('ready in 1...');
  await Future.delayed(const Duration(seconds: 1));
  print('go!');
  FlutterNativeSplash.remove();
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetailsScreen.screen_name: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.screen_name: (context) => HadethDetailsScreen(),
      },
    );
  }
}

