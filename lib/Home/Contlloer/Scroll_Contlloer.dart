import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScrollContlloer extends GetxController{
  bool scroll=false;
  final ScrollController controller = ScrollController();

  void scrollDown() {
    controller.animateTo(
      controller.position.maxScrollExtent,
      duration: Duration(seconds: 7),
      curve: Curves.fastOutSlowIn,
    ).then((value) {
      scroll = true;
      update();
    });
  }
  void scrollUp() {
    controller.animateTo(
      controller.position.minScrollExtent,
      duration: Duration(seconds: 7),
      curve: Curves.fastOutSlowIn,
    ).then((value) {
      scroll = false;
      update();

    });
  }


}