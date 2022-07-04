import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_karem/Azkar/Contlloer/Ad3yaquran_contlloer.dart';
import 'package:quran_karem/Widget/Custom_Text.dart';


class Ad3yaQuranScreen extends StatelessWidget {
  final Ad3yaquran_contlloer f = Get.put(Ad3yaquran_contlloer());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 15,),
            GetBuilder<Ad3yaquran_contlloer>(
              builder: (controller) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  // separatorBuilder: (context, index) => const Divider(),
                  itemCount: controller.azakr.length,
                  itemBuilder: (BuildContext context, int index) {
                    var value = controller.azakr[index];
                    return (controller.azakr.isEmpty)
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
                                  text: value.content,
                                  Align: TextAlign.right,
                                  size: 18,
                                  weight: FontWeight.bold),
                              const SizedBox(height: 10,),
                              if (value.description != '')
                                CustomText(
                                    text: value.description,
                                    Align: TextAlign.right,
                                    size: 16,
                                    weight: FontWeight.normal),
                              Center(
                                  child: CustomText(
                                      text:" [${value.count}] " ,
                                      Align: TextAlign.center,
                                      size: 16,
                                      weight: FontWeight.normal)),
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
