import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../app_colors.dart';
import '../provider/app_theme_provider.dart';

class SebhaScreen extends StatefulWidget {
  SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  List<String> _azkarList = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
  ];

  int _currentZakrIndex = 0;
  final int _maxCount = 33;
  int _currentCount = 0;
  double _rotationAngle = 0;

  @override
  Widget build(BuildContext context) {
    AppThemeProvider themeProvider = Provider.of<AppThemeProvider>(context);

    return Container(
      padding: EdgeInsets.only(top: 20),
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.07,
        vertical: MediaQuery.of(context).size.width * 0.02,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.65,
              height: MediaQuery.of(context).size.width * 0.65,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 0,
                    child: Image.asset(
                      'assets/images/head_of_seb7a.png',
                      color: themeProvider.getIconsColor(),
                    ),
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Positioned(
                    top: 60, // Adjust the top position as needed
                    child: GestureDetector(
                      onTap: _onSebaClick,
                      child: Transform.rotate(
                        angle: _rotationAngle,
                        child: Image.asset(
                          'assets/images/body_of_seb7a.png',
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.width * 0.5,
                          fit: BoxFit.fill,
                          color: themeProvider.getIconsColor(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            '${AppLocalizations.of(context)!.tasbeeh_count}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            decoration: BoxDecoration(
                color: (themeProvider.isCurrentAppThemeLight()
                        ? AppColors.primaryColor
                        : AppColors.darkBackgroundColor)
                    .withOpacity(0.75),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              '$_currentCount',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: themeProvider.getIconsColor(),
                borderRadius: BorderRadius.circular(30)),
            child: Theme(
              data: Theme.of(context).copyWith(
                textTheme: Theme.of(context).textTheme.copyWith(
                      bodyMedium: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
              ),
              child: Builder(
                builder: (context) {
                  return Text(
                    '${_azkarList[_currentZakrIndex]}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  void _onSebaClick() {
    if (_currentCount == _maxCount) {
      _displayNextZakr();
    } else {
      _rotateImage();
    }
    setState(() {});
  }

  void _resetCount() {
    _currentCount = 0;
    _rotationAngle = 0;
  }

  void _displayNextZakr() {
    if (_currentZakrIndex == _azkarList.length - 1) {
      _currentZakrIndex = 0;
    } else {
      _currentZakrIndex += 1;
    }
    _resetCount();
    _rotateImage();
  }

  void _rotateImage() {
    _currentCount++;
    _rotationAngle = (_currentCount * 2 * 3.1415926535897932) / _maxCount;
  }
}
