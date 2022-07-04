import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../Model/azkar_model.dart';


class Ad3yaquran_contlloer extends GetxController{
  List<azakrsaba7>azakr=[];

  Ad3yaquran_contlloer(){
    getdata();
  }

  Future getdata() async {

    final String response = await rootBundle.loadString('lib/json/ad3yaquran.json');
    final data = await json.decode(response)['أدعية قرآنية'];
    for(int x=0;x<data.length;x++){
      azakr.add(azakrsaba7.fromMap(data[x]));
    }
    print(data);
    update();


  }



}
