import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../Model/azkar_model.dart';


class Azkar_Noom_Contlloer extends GetxController{
  List<azakrsaba7>azakr=[];

  Azkar_Noom_Contlloer(){
    getdata();
  }

  Future getdata() async {

    final String response = await rootBundle.loadString('lib/json/azkarnoom.json');
    final data = await json.decode(response)['أذكار النوم'];
    for(int x=0;x<data.length;x++){
      azakr.add(azakrsaba7.fromMap(data[x]));
    }
    print(data);
    update();


  }



}
