import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quran_karem/Azkar/Contlloer/tsbe7_contlloer.dart';
import 'package:quran_karem/Tesbe7Number/Contlloer/Tesbe7Number_Contlloer.dart';
import 'package:quran_karem/Widget/Custom_Text.dart';
import 'package:quran_karem/Widget/Custom_Text.dart';
import 'package:quran_karem/Widget/Custom_Text.dart';
import 'package:quran_karem/Widget/Custom_Text.dart';
import 'package:quran_karem/Widget/Custom_Text.dart';
enum Menu { n1,n2, n3, n4,n5 }
List<String> list = [];

class Tesbe7NumberScreen extends StatelessWidget {
   Tesbe7NumberScreen({Key? key}) : super(key: key);
final TestNumber_Contlloer c = Get.put(TestNumber_Contlloer());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PopupMenuButton<Menu>(

              child:Text('اختيار الذكر ',style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.blue
              ),textAlign: TextAlign.center,) ,

              // Callback that sets the selected popup menu item.
              onSelected: (Menu item) {

                // c.ChnageCountery(item.name);
                c.NameShow(item.index);

              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                const PopupMenuItem<Menu>(
                  value: Menu.n1,
                  child: CustomText(text: 'سبحان الله',weight: FontWeight.bold,Align: TextAlign.center,size: 18,),
                ),
                const PopupMenuItem<Menu>(
                  value: Menu.n2,
                  child: CustomText(text: 'الحمد  الله',weight: FontWeight.bold,Align: TextAlign.center,size: 18,),
                ),
                const PopupMenuItem<Menu>(
                  value: Menu.n3,
                  child: CustomText(text: 'استغفر الله',weight: FontWeight.bold,Align: TextAlign.center,size: 18,),
                ),
                const PopupMenuItem<Menu>(
                  value: Menu.n4,
                  child: CustomText(text: 'لا الله الا الله',weight: FontWeight.bold,Align: TextAlign.center,size: 18,),
                ),
                const PopupMenuItem<Menu>(
                  value: Menu.n5,
                  child: CustomText(text: 'الله اكبر ',weight: FontWeight.bold,Align: TextAlign.center,size: 18,),
                ),

              ]),
          GetBuilder<TestNumber_Contlloer>(builder: ( controller) {
            print(controller.box.read('bool'));
            print(controller.box.read('mynumber'));

            return Column(
              children: [
                const SizedBox(height: 10,),

                CustomText(text:(controller.box.read('name')==null)?'': controller.box.read('name'),weight: FontWeight.bold,Align: TextAlign.center,size: 18,),
                const SizedBox(height: 10,),
                Text((controller.box.read('mynumber')==null)?'${0}': '${controller.box.read('mynumber')}',style: TextStyle(
                  color: Color(0xffff5722),
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 10,),

                (controller.box.read('mynumber')==controller.countlength ||controller.box.read('bool')==false||controller.box.read('bool')==null||controller.box.read('name')==null)?Text(''):      Container(
                  width: 100,
                  height: 50,
                  decoration: const ShapeDecoration(
                    shape: StadiumBorder(),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [ Colors.teal, Colors.green],
                    ),
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: const StadiumBorder(),
                    child:Icon(Icons.add),
                    onPressed: () {
                      controller.Change();
                    },
                  ),
                ),
                const SizedBox(height: 15,),

            Container(
            width: 100,
            height: 50,
            decoration: const ShapeDecoration(
            shape: StadiumBorder(),
            gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [ Colors.blue, Colors.blueGrey,],
            ),
            ),
            child: MaterialButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: const StadiumBorder(),
            child:Icon(Icons.restart_alt),
            onPressed: () {
              controller.buttonRest();
            },
            ),
            ),


              ],
            );
          },)

        ],
      ),
    );
  }
}
