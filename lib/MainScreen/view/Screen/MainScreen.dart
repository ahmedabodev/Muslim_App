import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


import '../../../Servies/theme_services.dart';
import '../../../theme.dart';
import '../../controller/bottom_bar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final MainController c = Get.put(MainController());
final ThemeController d=Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            elevation: 10,
            centerTitle: true,
            title:const Text(' مسلم ',) ,
            actions: [

              GetBuilder<ThemeController>(
                  init: ThemeController(),
                  builder: (controller) => CupertinoSwitch(
                    activeColor: Colors.black45,
                    thumbColor: Colors.teal,
                    trackColor: Colors.white,
                    value: controller.isDarkMode,
                    onChanged: (bool value) {
                      controller.change(value);
                      ThemeServices().switchTheme();
                    },
                  )),

            ],
            // title: Text(controller.titles[controller.index]),

          ),
          body: controller.screens[c.index],
          bottomNavigationBar: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              controller.change(value);
            },
            elevation: 0,
            currentIndex: controller.index,
            items:  [
              BottomNavigationBarItem(
                icon: Image.asset('images/koran.png',height: 20,),
                label: 'قران كريم',
              ),
              BottomNavigationBarItem(
                icon:Image.asset('images/compass.png',height: 20,),
                label: 'القبله',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/praying.png',height: 20),
                label: 'اذكار',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/rosary.png',height: 20,),
                label: 'تسبيح',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/quran.png',height: 20,),
                label: ' احاديث ',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/shalat.png',height: 20,),
                label: ' الصلاة ',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/wudhu.png',height: 20,),
                label: ' الوضوء ',
              ),


            ],
          ),
        );
      },
    );
  }
}
