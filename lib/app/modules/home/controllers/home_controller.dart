import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  @override
  Rx<TabController>? tabController;
  RxInt selectedIndex = 0.obs;
  void onInit() {
    tabController = TabController(length: 4, vsync: this).obs;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
