import 'package:flutter/material.dart';
import 'package:quran_karem/Widget/Custom_Text.dart';

class PrayerScreen extends StatelessWidget {
  const PrayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                const Center(child: CustomText(text: 'شرح أركان الصلاة',size: 26,Align: TextAlign.center,weight: FontWeight.bold,)),
                const CustomText(text: '1-القيام في الصلاة المفروضة لمن يقدر:',size: 20,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: 'أي يجب أن يقف المرء بشكل مستقيم عندما يتوجه للصلاة وذلك للشخص القادر أما من يعاني من مرض أو من علة يصعب معها الوقوف فيمكنه بدء الصلاة جالساً، كما قال الرسول -صلى الله عليه وسلم- :”صَلِّ قائمًا فإن لم تستَطِع فقاعدًا، فإن لم تستَطِعْ فعلى جَنبٍ“.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
              ],
            ),
const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                const CustomText(text: '2-تكبيرة الإحرام:',size: 22,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- أي أن يقول المصلي “الله أكبر.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- ويجب أن يجهر بها فيكون صوته مسموع بها لنفسه وينطقها بشكل صحيح فلا يجوز أن يطيل بها فتظهر كأنها تساؤل “آلله أكبر”.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- بالإضافة لتحريه موضع يديه فيجب أن تكون مستقيمة ويرفعها وراء الأذن ثم يقول تكبيرة الإحرام ويبدأ الصلاة.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- والصورة التالية توضح لكم تكبيرة الإحرام.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                Image.asset('images/n1.png'),
              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                const CustomText(text: '3-قراءة سورة الفاتحة:',size: 22,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- قراءة سورة الفاتحة ملزمة في كل الصلوات وفي كل الركعات فهي ركن أساسي من أركان الصلاة، وهذا ما يؤكده لنا قول الرسول -صلى الله عليه وسلم- :”لا صَلاةَ لِمَنْ لَمْ يَقْرَأْ بِفَاتِحَةِ الكِتَابِ“.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- والصورة التالية توضح لكم هذا الركن ',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                Image.asset('images/n2.jpg'),
              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                const CustomText(text: '4-الركوع:',size: 22,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- على المصلي أن يركع خلال صلاته بعد انتهاؤه من قراءة سورة الفاتحة والسورة القصيرة، فعليه أن يحني ظهره بشكل مستقيم ويضع كلتا يديه على ركبتيه.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- كما يضم الركوع ركنين آخرين الأول هو الرفع منه والثاني هو الاعتدال بشكل قائم، وذلك تبعاً لما قاله الرسول -صلى الله عليه وسلم- :“….ثُمَّ ارْفَعْ حَتَّى تَعْتَدِلَ قَائِماً..”. ',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- والصورة التالية توضحه لكم. ',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),

                Image.asset('images/n3.png'),
              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                const CustomText(text: '5-السجود:',size: 22,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- عقب الاعتدال من الركوع يحين دور السجود، والسجود من أركان الصلاة التي لا تصح دونه.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- ويعني وضع الجبهة واليدين وأطراف القدمين على الأرض، كما يوضحها قول الرسول -صلى الله عليه وسلم- :”أُمِرْتُ أَنْ أَسْجُدَ عَلَى سَبْعَةِ أَعْظُمْ: الجَبْهَةُ، وَأَشَارَ بِيَدِهِ إِلَى أَنْفِهِ وَالْيَدَيْنِ وَالرُّكْبَتَيْنِ وَأَطْرَافَ القَدَمَيْنِ“ ',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- كما يضم السجود ركنين آخرين هما “الرفع منه، والجلوس بين السجدتين”. ',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                Image.asset('images/n4.jpg'),
                Image.asset('images/n5.png'),
              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: const [
                CustomText(text: '6-الطمأنينة:',size: 22,Align: TextAlign.right,weight: FontWeight.bold,),
                CustomText(text: '- وتعني أن يسكن المرء في كل ركن يؤديه خلال الصلاة، وذلك وفقاً لما قاله رسول الله -صلى الله عليه وسلم- :”ثُمَّ ارْكَعْ حَتَّى تَطْمَئِنَّ رَاكِعاً، ثُمَّ ارْفَعْ حَتَّى تَعْتَدِلَ قَائِماً، ثُمَّ اسْجُدْ حَتَّى تَطْمَئِنَّ سَاجِداً، ثُمَّ ارْفَعْ حَتَّى تَطْمَئِنَّ جَالِساً…“.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                const CustomText(text: '7-التشهد الأخير:',size: 22,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- يقرأ التشهد الأخير في آخر ركعة من الصلاة ويسبق السلام من الصلاة، وفيه يقول المسلم :”التَّحِيَّاتُ لله وَالصَّلَوَاتُ وَالطَّيِّبَاتُ، السَّلامُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ الله وَبَرَكَاتُهُ، السَّلامُ عَلَيْنَا وَعَلَى عِبَادِ الله الصَّالِحينَ، أَشْهَدُ أَنْ لا إِلَهَ إِلا الله وَأَشْهَدُ أَنَّ مُحَمَّداً عَبْدُهُ وَرَسُولُه”.',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- ثم يعقبه بقول :”اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ، اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ“. ',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- والصورة التالية توضح لكم موضع الجلوس للتشهد الأخير. ',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- أيضاً يضم السجود ركن آخر لازم هو الجلوس له والجلوس للتسلميتين. ',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                Image.asset('images/n6.jpg',),
              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                const CustomText(text: '8-التسليم:',size: 22,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- ويعني أن يقول المسلم “السلام عليكم ورحمة الله” مرتين لإنهاء الصلاة مرة عن يمينه ومرة عن يساره، وفي صلاة النافلة وصلاة الجنازة يمكن الاكتفاء بتسليمه واحدة. ',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),
                Image.asset('images/n7.gif'),
                Image.asset('images/n8.gif'),

              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                const CustomText(text: '9-ترتيب الأركان:',size: 22,Align: TextAlign.right,weight: FontWeight.bold,),
                const CustomText(text: '- وبذلك لا يبقى سوى ركن واحد فقط من أركان الصلاة وهو الالتزام بالترتيب الخاص بكل ركن من الأركان وعدم الإخلال به، فعلينا أن نصلي كما صلى رسول الله بهذا الترتيب الذي بلغنا عنه. ',size: 14,Align: TextAlign.right,weight: FontWeight.bold,),


              ],
            ),
          ],

        ),
      ),
    );
  }
}
