import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:get/get.dart';
import 'package:quran_karem/Moqr2/Moqr2.dart';
import 'package:quran_karem/Widget/Custom_Text.dart';

import '../theme.dart';
import 'Contlloer/Home_Contlloer.dart';
import 'Contlloer/Scroll_Contlloer.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
   // final ScrollController _controller = ScrollController();
   final ScrollContlloer con=Get.put(ScrollContlloer());
// This is what you're looking for!
//   bool isDown = false;
//   void _scrollDown() {
//     _controller.animateTo(
//       _controller.position.maxScrollExtent,
//       duration: Duration(seconds: 3),
//       curve: Curves.fastOutSlowIn,
//     ).then((value) {
//       isDown = true;
//     });
//   }
//   void _scrollUp() {
//     _controller.animateTo(
//       _controller.position.minScrollExtent,
//       duration: Duration(seconds: 3),
//       curve: Curves.fastOutSlowIn,
//     ).then((value) {
//       isDown = false;
//     });
//   }

final Home_Controller c=Get.put(Home_Controller());
final ThemeController d=Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton:GetBuilder<ScrollContlloer>(builder: ( controller) {
      //   return  FloatingActionButton.small(
      //     onPressed: (controller.scroll) ? controller.scrollUp: controller.scrollDown,
      //     child: Icon((controller.scroll) ? Icons.arrow_upward: Icons.arrow_downward ),
      //   );
      // },),
      body:OfflineBuilder(
        connectivityBuilder: (

            BuildContext context,
            ConnectivityResult connectivity,
            Widget child,
            ) {
          final bool connected = connectivity != ConnectivityResult.none;
          if (connected) {
            print(connected.toString());
            return     Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Column(
                    children: [

                      GetBuilder<Home_Controller>(builder: ( controller) {

                        return  Expanded(child: GridView.builder(
                          controller:  con.controller,
                          itemCount: controller.home.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: (){
                                Get.to(()=> Moqr2(name: controller.home[index].Server,
                                  moqr2: controller.home[index].name,
                                  len: int.parse(controller.home[index].count),
                                  rewaya:controller.home[index].rewaya,
                                ));
                              },
                              child: Card(
                                elevation: 10,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: Text(controller.home[index].name,textAlign: TextAlign.center,)),
                                    Expanded(child: Text(controller.home[index].rewaya,textAlign: TextAlign.center,)),
                                  ],
                                ),
                              ),
                            );
                          }, ));
                      },)

                    ],
                  ),
                  GetBuilder<ScrollContlloer>(builder: ( controller) {
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton.small(
                        onPressed: (controller.scroll) ? controller.scrollUp: controller.scrollDown,
                        child: Icon((controller.scroll) ? Icons.arrow_upward: Icons.arrow_downward ),
                      ),
                    );
                  },),
                ],
              ),
            );
          } else {
            print(connected.toString());

            return const Center(child: CustomText(text: 'من فضلك اتصل بلانترنت', Align: TextAlign.center, size: 20, weight: FontWeight.bold));
          }
        },
        child:  const Center(child: CustomText(text: 'من فضلك اتصل بلانترنت', Align: TextAlign.center, size: 20, weight: FontWeight.bold)),
    ));
  }
}
