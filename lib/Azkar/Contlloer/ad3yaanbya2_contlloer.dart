import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../Model/azkar_model.dart';


class Ad3yaanbya2_contlloer extends GetxController{
  List<azakrsaba7>azakr=[];

  Ad3yaanbya2_contlloer(){
    getdata();
  }

  Future getdata() async {

    final String response = await rootBundle.loadString('lib/json/ad3yaanbya2.json');
    final data = await json.decode(response)['أدعية الأنبياء'];
    for(int x=0;x<data.length;x++){
      azakr.add(azakrsaba7.fromMap(data[x]));
    }
    print(data);
    update();


  }



}
