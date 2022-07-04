import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color orangeClr = Color(0xCFFF8746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);
class ThemeController extends GetxController {

  bool isDarkMode = true;
 void change(value){
   isDarkMode = value;
   update();
 }
  void toggleDarkMode() {
    isDarkMode = !isDarkMode;
    if (isDarkMode) {
      Get.changeTheme(Themes.dark);
    } else {
      Get.changeTheme(Themes.light);
    }
    update();
  }
}

class Themes {
  static final light = ThemeData(
    textTheme: TextTheme(
      bodyText1: TextStyle(
            color:Colors.white,
        ),

    ),

    primarySwatch: Colors.deepOrange,
    appBarTheme: const AppBarTheme(
        titleSpacing: 20,
        backgroundColor:Color(0xffD1D9D9),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.blue,
          // navigation bar color
          statusBarColor: Colors.black, // status bar color
        ),
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold)),
    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff682cbb),
      unselectedItemColor: Colors.grey,
      elevation: 20,
      backgroundColor:Color(0xffD1D9D9),
    ),


    primaryColor: primaryClr,
    scaffoldBackgroundColor:Color(0xFFF5F6F9) ,
    backgroundColor: Color(0xFFF5F6F9),
    brightness: Brightness.light,
    cardColor: Color(0xffD1D9D9),

  );
  static final dark = ThemeData(
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color:Color(0xff33294a),
      ),

    ),

    primarySwatch: Colors.deepOrange,
    appBarTheme: AppBarTheme(
        titleSpacing: 20,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff333739),
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor:
        Color(0xff011341),
        elevation: 0.0,
        titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor:  Colors.white,
      unselectedItemColor: Colors.grey,
      elevation: 20,
      backgroundColor:
      Color(0xff011341),
    ),
    scaffoldBackgroundColor:
    Color(0xff011341),
    cardColor: Color(0xff011341),
    primaryColor: darkGreyClr,
    backgroundColor: darkGreyClr,
    brightness: Brightness.dark,
  );





}



