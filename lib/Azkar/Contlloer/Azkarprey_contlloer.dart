import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../Model/azkar_model.dart';


class Azkar_Prey_Contlloer extends GetxController{
  List<azakrsaba7>azakr=[];

  Azkar_Prey_Contlloer(){
    getdata();
  }

  Future getdata() async {

    final String response = await rootBundle.loadString('lib/json/azkarafterprey.json');
    final data = await json.decode(response)['أذكار بعد السلام من الصلاة المفروضة'];
    for(int x=0;x<data.length;x++){
      azakr.add(azakrsaba7.fromMap(data[x]));
    }
    print(data);
    update();


  }



}
