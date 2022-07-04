import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_karem/Azkar/HomeAzark.dart';

import '../../ prayer/prayerScreen.dart';
import '../../Azkar/view/Saba7Screen.dart';
import '../../Biography of the Prophet/hadesScreen.dart';
import '../../Home/HomeScreen.dart';
import '../../Tesbe7Number/Tsbe7Screen.dart';
import '../../ablution/screen.dart';
import '../../qbla/qblaScreen.dart';


class MainController extends GetxController {
  int index = 0;
  List<Widget> screens = [
    HomeScreen(),
    qblaScreen(),
    HomcAzkar(),
    Tesbe7NumberScreen(),
    HadesScreen(),
    PrayerScreen(),
    WudhaScreen(),


  ];
  List<String> titles = [
    'الصفحه الرئسيه',
    'القبله',
    'اذكار',
    'الاعدادات',
  ];

  void change(int value) {
    index = value;
    screens[index];
    update();
  }
}
