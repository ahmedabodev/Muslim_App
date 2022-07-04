import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_karem/Biography%20of%20the%20Prophet/Contlloer/Mohamed_7ades.dart';

import '../Widget/Custom_Text.dart';

class descrepstion extends StatelessWidget {
  String name='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 10,),

                      CustomText(
                          text: name,
                          Align: TextAlign.right,
                          size: 16,
                          weight: FontWeight.normal),
                      const SizedBox(height: 10,),
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
            ),
            const SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }

  descrepstion({
    required this.name,
  });
}
