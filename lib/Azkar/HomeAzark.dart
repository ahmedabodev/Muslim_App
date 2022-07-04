import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_karem/Azkar/view/Ad3yaAnbya2.dart';
import 'package:quran_karem/Azkar/view/Ad3yaQuran.dart';
import 'package:quran_karem/Azkar/view/Azkarnight.dart';
import 'package:quran_karem/Azkar/view/Azkarnoom.dart';
import 'package:quran_karem/Azkar/view/Azkarprey.dart';
import 'package:quran_karem/Azkar/view/Azkarweeakup.dart';
import 'package:quran_karem/Azkar/view/Saba7Screen.dart';
import 'package:quran_karem/Azkar/view/Tsabya7Screen.dart';
import 'package:quran_karem/Widget/Custom_Text.dart';

class HomcAzkar extends StatelessWidget {
   HomcAzkar({Key? key}) : super(key: key);
   List<String>Name=[
     'أذكار الصباح',
     'أذكار المساء',
     'أذكار بعد السلام من الصلاة المفروضة',
     'أذكار الاستيقاظ',
     'أذكار النوم',
     'أدعية قرآنية',
     'أدعية الأنبياء',
     'تسابيح',
   ];

   List<Widget>Screens=[
     Saba7Screen(),
     AzkarNightScreen(),
     AzkarpreyScreen(),
     AzkarWeakupScreen(),
     AzkarNoomScreen(),
     Ad3yaQuranScreen(),
     Ad3yaAnbya2Screen(),
     Tasbe7Screen(),


   ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(

          children: [
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Name.length,
              itemBuilder: (BuildContext context, int index) {
                return  GestureDetector(
                  onTap: (){
                    Get.to(()=> Screens[index])
                    ;
                  },
                  child: Card(
                    child: Center(child: CustomText(text: Name[index], Align: TextAlign.center, size: 20, weight: FontWeight.bold)),
                  ),
                );
              },)

          ],
        ),
      ),
    );
  }
}
