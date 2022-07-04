import 'package:flutter/material.dart';

import '../Widget/Custom_Text.dart';

class WudhaScreen extends StatelessWidget {
  const WudhaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                const Center(child: CustomText(text: 'طريقة الوضوء الصحيحة',size: 26,Align: TextAlign.center,weight: FontWeight.bold,)),
                const CustomText(text: 'وبالتالي فإن طريقة الوضوء الصحيح للمسلم تكون على الشكل التالي على الترتيب:',size: 16,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '1- يبدأ بأن ينوي بقلبه الوضوء، ثم يقول: بسم الله.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '2- يغسل الكفين ثلاث مرات.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const SizedBox(height: 10,),
                Center(child: Image.asset('images/w1.jpg')),

              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [

                const CustomText(text: '3- يتمضمض ثلاث مرات، وذلك بإدخال الماء إلى الفم ثم إخراجه.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const SizedBox(height: 10,),

                Center(child: Image.asset('images/w2.jpg')),

              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [

                const CustomText(text: '4-يستنشق ثلاث مرات، بجذب الماء إلى الأنف عن طريق النفس ثم يستنثر الماء.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const SizedBox(height: 10,),
                Center(child: Image.asset('images/w3.jpg')),

              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [

                const CustomText(text: '5-يغسل الوجه كاملاً ثلاث مرات، وحدود الوجه هي: من منابت شعر الرأس إلى آخر الدقن، ومن الأذن إلى الأذن الأخرى، وإن كان بالوجه شعر أو لحية خفيفة وجب غسلها حتى يصل الماء إلى الجلد تحتها، وإن كان الشعر كثيفاً يغسل ظاهره.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const SizedBox(height: 10,),
                Center(child: Image.asset('images/w4.jpg')),

              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [

                const CustomText(text: '6-يغسل اليدين إلى المرفقين ثلاث مرات، بدءاً باليد اليمنى.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const SizedBox(height: 10,),
                Center(child: Image.asset('images/w5.jpg')),

              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [

                const CustomText(text: '7-يمسح رأسه مرة واحدة.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '8-يمسح أذنيه مرة واحدة.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),

                const SizedBox(height: 10,),
                Center(child: Image.asset('images/w6.jpg')),

              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [

                const CustomText(text: '9-يغسل الرجلين إلى الكعبين ثلاث مرات، مع تخليل الماء بين الأصابع.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const SizedBox(height: 10,),
                Center(child: Image.asset('images/w7.jpg')),

              ],
            ),
            const SizedBox(height: 15,),
            const CustomText(text: 'عد أن ينتهي من الوضوء عليه أن يقول: “أشهد أنّ لا إله إلا الله وحده لا شريك له، وأنّ محمداً عبده ورسوله، اللهمّ اجعلني من التوابين، واجعلني من المتطهرين”؛ لقول رسول الله صلى الله عليه وسلم: “مَا مِنْكُمْ مِنْ أَحَدٍ يَتَوَضَّأُ فَيُبْلِغُ ـ أَوْ فَيُسْبِغُ ـ الْوَضُوءَ، ثُمَّ يَقُولُ: أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللهُ، وَأَنَّ مُحَمَّدًا عَبْدُ اللهِ وَرَسُولُهُ، إِلَّا فُتِحَتْ لَهُ أَبْوَابُ الْجَنَّةِ الثَّمَانِيَةُ، يَدْخُلُ مِنْ أَيِّهَا شَاءَ” وفي التّرمذي بلفظ: ” اللهم اجعلني من التّوابين، واجعلني من المتطهّرين”. وقال ابن أبي زيد المالكيّ في الرّسالة: من توضّأ فأحسن الوضوء، ثمّ رفع طرفه إلى السّماء، فقال: أشهد أن لا إله إلا الله، وحده لا شريك له، وأشهد أنّ محمداً عبده ورسوله، فُتّحت له أبواب الجنّة الثّمانية، يدخل من أيّها شاء”.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
            const SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
