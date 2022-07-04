import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../Model/azkar_model.dart';


class Azkar_Weakup_Contlloer extends GetxController{
  List<azakrsaba7>azakr=[];

  Azkar_Weakup_Contlloer(){
    getdata();
  }

  Future getdata() async {

    final String response = await rootBundle.loadString('lib/json/AzkarWeakkupp.json');
    final data = await json.decode(response)['أذكار الاستيقاظ'];
    for(int x=0;x<data.length;x++){
      azakr.add(azakrsaba7.fromMap(data[x]));
    }
    print(data);
    update();


  }



}
