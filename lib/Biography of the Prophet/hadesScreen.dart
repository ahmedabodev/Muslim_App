import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_karem/Biography%20of%20the%20Prophet/Contlloer/Mohamed_7ades.dart';
import 'package:quran_karem/Biography%20of%20the%20Prophet/descrptionhades.dart';

import '../Widget/Custom_Text.dart';

class HadesScreen extends StatelessWidget {
   HadesScreen({Key? key}) : super(key: key);
final mohamed7ades c =Get.put(mohamed7ades());
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 15,),
            GetBuilder<mohamed7ades>(
              builder: (controller) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  // separatorBuilder: (context, index) => const Divider(),
                  itemCount: controller.hades.length,
                  itemBuilder: (BuildContext context, int index) {
                    var value = controller.hades[index];
                    return (controller.hades.isEmpty)
                        ? Center(child: const CircularProgressIndicator())
                        : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [

                              CustomText(
                                    text: value.hadith,
                                    Align: TextAlign.right,
                                    size: 16,
                                    weight: FontWeight.normal),
                              const SizedBox(height: 10,),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                color: Colors.blue,
                                onPressed:(){
                                Get.to(()=> descrepstion(name: value.description));
                              },
                              child: Text('شرح الحديث '),
                              )
                              // Center(
                              //     child: CustomText(
                              //         text:" [${value.description}] " ,
                              //         Align: TextAlign.center,
                              //         size: 16,
                              //         weight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
