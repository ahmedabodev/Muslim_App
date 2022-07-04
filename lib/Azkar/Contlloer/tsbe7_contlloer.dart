import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../Model/azkar_model.dart';


class Tesbe7_contlloer extends GetxController{
  List<azakrsaba7>azakr=[];

  Tesbe7_contlloer(){
    getdata();
  }

  Future getdata() async {

    final String response = await rootBundle.loadString('lib/json/tsabe7.json');
    final data = await json.decode(response)['تسابيح'];
    for(int x=0;x<data.length;x++){
      azakr.add(azakrsaba7.fromMap(data[x]));
    }
    print(data);
    update();


  }



}
