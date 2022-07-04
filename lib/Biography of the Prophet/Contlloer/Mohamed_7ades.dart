import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quran_karem/Biography%20of%20the%20Prophet/Model/mohamed.dart';



class mohamed7ades extends GetxController{
  List<mohamed>hades=[];

  mohamed7ades(){
    getdata();
  }

  Future getdata() async {

    final String response = await rootBundle.loadString('lib/json/40.json');
    final data = await json.decode(response);
    for(int x=0;x<data.length;x++){
      hades.add(mohamed.fromMap(data[x]));
    }
    print(data);
    update();


  }



}
