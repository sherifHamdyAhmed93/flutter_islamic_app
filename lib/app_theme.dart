import 'package:flutter/material.dart';
import 'package:flutter_islamic_app/app_colors.dart';

class AppTheme{

  static final ThemeData lightTheme  = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          color: AppColors.blackColor,
          fontSize: 30,
          fontWeight: FontWeight.w700
      ),
      bodyLarge: TextStyle(
          color: AppColors.blackColor,
          fontSize: 25,
          fontWeight: FontWeight.w600
      ),
      bodyMedium:  TextStyle(
          color: AppColors.blackColor,
          fontSize: 25,
          fontWeight: FontWeight.w400
      ),
        bodySmall:  TextStyle(
        color: AppColors.blackColor,
        fontSize: 20,
        fontWeight: FontWeight.w400
    )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryColor,
          selectedItemColor:AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
      showSelectedLabels: true,
      showUnselectedLabels: false
    )
  );


}