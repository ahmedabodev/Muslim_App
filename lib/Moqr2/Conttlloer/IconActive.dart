import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class iconactive extends GetxController{
  int index=0;
  MaterialColor coloricon=Colors.grey;
  changeicon(value){
    index=value;
    if(index!=value){
      coloricon=Colors.grey;
    }else{
      coloricon=Colors.blue;
    }
    update();

  }
}