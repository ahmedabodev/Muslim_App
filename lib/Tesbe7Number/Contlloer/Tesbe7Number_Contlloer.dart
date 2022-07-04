import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TestNumber_Contlloer extends GetxController {

  List<String> zekr = [
    'سبحان الله ',
    'الحمد الله ',
    'استغفر الله ',
    'لا الله الا  الله ',
    'الله اكبر ',
  ];
  bool shownumber = false;

  String Showname = '';
  int Number = 0;
  int countlength = 100;
  String message = '';
  final box = GetStorage();
  defo(){
    box.write('mynumber',0);
    box.write('bool',false);


  }

  NameShow(value) {
    shownumber = true;
    Showname = zekr[value];
    Number = 0;
    box.write('name', Showname);

    box.write('bool',true);
    box.write('mynumber',0);

    update();
  }

  Change() async{
    if (box.read('mynumber') == countlength) {
      Get.snackbar('', ' تقبل الله منا ومنك صالح الاعمال');
      message = ' تقبل الله منا ومنك صالح الاعمال ';

      update();
    } else {
      // Get.snackbar('', 'wait');
      // Number++;
      box.write('mynumber',box.read('mynumber')+1);

      if (box.read('mynumber')  == countlength) {
        Get.snackbar("", ' تقبل الله منا ومنك صالح الاعمال',
          snackPosition: SnackPosition.TOP,
          // backgroundColor:  Colors.green,
        borderRadius: 20,
          margin:EdgeInsets.all(99),
          duration: Duration(seconds: 5),
          animationDuration: Duration(seconds: 3),

        );
        // Get.defaultDialog(
        //   title: '',
        //   middleText: 'تقبل الله منا ومنك صالح الاعمال',
        //   backgroundColor: Colors.transparent
        // );
        message = ' تقبل الله منا ومنك صالح الاعمال ';
        shownumber=false;
        box.write('bool',false);
        box.read('mynumber');

        update();
      }
    }
    update();


  }

  buttonRest() {
    Number = 0;
    box.write('mynumber',0);
    box.write('bool',true);

    update();
  }
}
