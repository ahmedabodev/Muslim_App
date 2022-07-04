import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../Model/azkar_model.dart';


class Azkar_Night_Contlloer extends GetxController{
  List<azakrsaba7>azakr=[];

  Azkar_Night_Contlloer(){
    getdata();
  }

  Future getdata() async {

    final String response = await rootBundle.loadString('lib/json/azkarmsa22.json');
    final data = await json.decode(response)['أذكار المساء'];
    for(int x=0;x<data.length;x++){
      azakr.add(azakrsaba7.fromMap(data[x]));
    }
    print(data);
    update();


  }



}
