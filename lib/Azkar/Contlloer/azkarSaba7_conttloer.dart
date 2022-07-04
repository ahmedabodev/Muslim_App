import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../Model/azkar_model.dart';


class Azkar_Saba7 extends GetxController{
  List<azakrsaba7>azakr=[];

  Azkar_Saba7(){
    getdata();
  }

  Future getdata() async {

    final String response = await rootBundle.loadString('lib/json/azkarsaba7.json');
    final data = await json.decode(response)['أذكار الصباح'];
    for(int x=0;x<data.length;x++){
azakr.add(azakrsaba7.fromMap(data[x]));
    }
    print(data);
    update();


      }



  }
