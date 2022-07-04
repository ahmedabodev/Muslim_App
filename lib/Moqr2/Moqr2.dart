import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran_karem/Moqr2/Conttlloer/Textimage_Conttlloer.dart';
import 'package:share/share.dart';

import '../Widget/Custom_Text.dart';
import '../const.dart';
import '../main.dart';

import 'Conttlloer/IconActive.dart';
import 'Conttlloer/name_conttlloer.dart';
import 'Conttlloer/openlink.dart';
import 'Conttlloer/sharelink.dart';


class Moqr2 extends StatelessWidget {
  String? name;
  String moqr2;
  int? len;
  String? rewaya;
  final iconactive ic=Get.put(iconactive());
  String? links;

  final textimage_Contlloer see=Get.put(textimage_Contlloer());
  final name_contlloer c = Get.put(name_contlloer());
  // final growableList =
  //     List<int>.generate(144, (int index) => index + 1, growable: true);

  playaudio(String number) async {
    await player.pause();

    await player.setAudioSource(
      ConcatenatingAudioSource(
        // Start loading next item just before reaching it.
        useLazyPreparation: true, // default
        // Customise the shuffle algorithm.
        shuffleOrder: DefaultShuffleOrder(), // default
        // Specify the items in the playlist.
        children: [
          AudioSource.uri(Uri.parse("${name}/${number}.mp3")),
        ],
      ),
      // Playback will be prepared to start from track1.mp3
      initialIndex: 0, // default
      // Playback will be prepared to start from position zero.
      initialPosition: Duration.zero, // default
    );

    await player.seekToNext();
    await player.seekToPrevious();
// Jump to the beginning of track3.mp3.
    await player.seek(Duration(milliseconds: 0), index: 0);

    player.play();
  }
  stopaduio(String number) async {
    await player.setAudioSource(

      ConcatenatingAudioSource(
        // Start loading next item just before reaching it.
        useLazyPreparation: true, // default
        // Customise the shuffle algorithm.
        shuffleOrder: DefaultShuffleOrder(), // default
        // Specify the items in the playlist.
        children: [

          AudioSource.uri(
              Uri.parse("http://server8.mp3quran.net/${name}/$number.mp3")),
        ],
      ),
      // Playback will be prepared to start from track1.mp3
      initialIndex: 0, // default
      // Playback will be prepared to start from position zero.
      initialPosition: Duration.zero, // default
    );
    await player.seekToNext();
    await player.seekToPrevious();
// Jump to the beginning of track3.mp3.
    await player.seek(Duration(milliseconds: 0), index: 0);
    await player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Color(0xff7d7893),),
          onPressed: () {
            Get.back();
          },

        ),
        centerTitle: true,
        title:const Text('Quran App',) ,
      ),
      body: OfflineBuilder(
        connectivityBuilder: (

            BuildContext context,
            ConnectivityResult connectivity,
            Widget child,
            ) {
          final bool connected = connectivity != ConnectivityResult.none;
          if (connected) {
            print(connected.toString());
            return    SingleChildScrollView(
              child:  Column(
                children: [
                  const  SizedBox(height: 15,),
                  Text(moqr2,style: TextStyle(
                      color:Get.isDarkMode?Colors.white: Color(0XFF7d7893),
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  Text(rewaya!,style: TextStyle(
                    color: Get.isDarkMode?Colors.white: Color(0XFF7d7893),
                    fontSize: 15,
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                    child: Container(
                        height: 150,
                        alignment: Alignment.bottomCenter,
                        width: MediaQuery.of(context).size.width,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const  DecorationImage(
                            image: AssetImage('images/Quran.jpg',),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          GetBuilder<textimage_Contlloer>(
                            init: textimage_Contlloer(),
                            builder: ( controller) {
                              return       Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(controller.nameEn.toString(),
                                    style:const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20

                                    ),),
                                  Text(controller.nameAr.toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    ),
                                  ),

                                ],
                              );
                            },),

                        )
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: len,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          elevation: 5,
                          child: ListTile(
                            title: Text(
                              quran.getSurahNameEnglish(index + 1),
                              style: TextStyle(color:Get.isDarkMode?Colors.white: Color(0xff33294a)),
                            ),
                            subtitle: Text(
                              quran.getSurahNameArabic(index + 1),
                              style: TextStyle(color:Get.isDarkMode?Colors.white: Color(0xff33294a)),
                            ),
                            leading: SizedBox(
                              height: 45,
                              width: 45,
                              child: ClipPath(
                                clipper: StarClipper(8),
                                child: Container(

                                  alignment: Alignment.center,
                                  height: 150,
                                  color: Color(0xff987bc2),
                                  child: Text(
                                    "${1 + index}",
                                    style: TextStyle(color: Color(0xff190c30)),
                                  ),
                                ),
                              ),
                            ),
                            trailing: Wrap(
                              children: [
                                IconButton(onPressed: ()async{
                                  String? total;
                                  if (index < 10) {
                                    total = "00${index + 1}";
                                    // Share.share("${name}/$total.mp3");

                                    // sharelink("${name}/$total.mp3");

                                    openlink("${name}/$total.mp3");
                                    print(total);
                                  } else if (index < 100) {
                                    total = "0${index + 1}";
                                    openlink("${name}/$total.mp3");

                                    print(total);
                                  } else {
                                    total = "${index + 1}";
                                    openlink("${name}/$total.mp3");
                                    print(total);
                                  }
                                }, icon: Icon(Icons.download)),
                                IconButton(
                                    onPressed: () {
                                      String? total;
                                      if (index < 10) {
                                        total = "00${index + 1}";
                                        playaudio(total);
                                        print(total);
                                      } else if (index < 100) {
                                        total = "0${index + 1}";
                                        playaudio(total);
                                        print(total);
                                      } else {
                                        total = "${index + 1}";
                                        playaudio(total);
                                        print(total);
                                      }
                                      see.Changetext(quran.getSurahNameArabic(index + 1), quran.getSurahNameEnglish(index + 1));
                                    },
                                    icon: Icon(Icons.play_arrow)),
                                IconButton(
                                    onPressed: () {
                                      String? total;
                                      if (index < 10) {
                                        total = "00+${index + 1}";

                                        stopaduio(total);
                                      } else if (index < 100) {
                                        total = "0+${index + 1}";

                                        stopaduio(total);
                                      } else {
                                        total = "${index + 1}";
                                        stopaduio(total);
                                      }
                                      see.Changetext('','');

                                    },
                                    icon: Icon(Icons.pause)),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  // testingaduio(link: "http://server8.mp3quran.net/ahmad_huth/$number.mp3",),
                ],
              ),
            );
          } else {
            print(connected.toString());

            return const Center(child: CustomText(text: 'من فضلك اتصل بلانترنت', Align: TextAlign.center, size: 20, weight: FontWeight.bold));
          }
        },
        child:  const Center(child: CustomText(text: 'من فضلك اتصل بلانترنت', Align: TextAlign.center, size: 20, weight: FontWeight.bold)),
      ),
    );
  }

  Moqr2({required this.name, required this.moqr2, required this.len,required this.rewaya});
}
