import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:quran_karem/Home/Model/HomeModel.dart';
class Home_Controller extends GetxController{
List<HomeModel>home=[];
  Home_Controller(){
    getdata();
  }

var  count;
  Future getdata() async {
    try{
      var request = http.Request(
          'GET',
          Uri.parse(
              'https://mp3quran.net/api/_arabic.json'));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        // print(await response.stream.bytesToString());
        var body = await response.stream.bytesToString();
        var responsebody = jsonDecode(body)['reciters'];
        count= jsonDecode(body)['reciters'];


        for (int x = 0; x < responsebody.length; x++) {
          home.add(HomeModel.fromMap(responsebody[x]));
        }


      }else {

        // print(response.reasonPhrase);
      }
    }catch(e){

      print(e);
    }

    // } else {
    //   for(int i =0; i < data.length; i ++){
    //     data.add(homemodel.fromMap(json.decode(data)));
    //   }
    //   // print(response.reasonPhrase);
    // }
    update();
  }
}