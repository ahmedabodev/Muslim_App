import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart'as http;

import '../Models/moqr2model.dart';
class name_contlloer extends GetxController{
  List<Moqr2model>sura=[];
  name_contlloer(){
    gethome();
  }
  Future gethome()async{
    try{
      var request = http.Request(
          'GET',
          Uri.parse(
              'https://mp3quran.net/api/_arabic_sura.json'));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        // print(await response.stream.bytesToString());
        var body = await response.stream.bytesToString();
        var responsebody = jsonDecode(body)['Suras_Name'];
        print(responsebody);

        for (int x = 0; x < responsebody.length; x++) {
          sura.add(Moqr2model.fromMap(responsebody[x]));
        }


      }else {

        // print(response.reasonPhrase);
      }
    }catch(e){

    }
  }
}