import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (context) {
            return Obx(() {
              return Scaffold(
                  backgroundColor: controller.selectedIndex.value == 0
                      ? Colors.yellow
                      : controller.selectedIndex.value == 1
                          ? Colors.green
                          : controller.selectedIndex.value == 2
                              ? Colors.blueAccent
                              : controller.selectedIndex.value == 3
                                  ? Colors.grey
                                  : Colors.white,
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TabBar(
                              onTap: (index) {
                                controller.selectedIndex.value = index;
                              },
                              tabs: [
                                Tab(child: Icon(Icons.home)),
                                Tab(child: Icon(Icons.search_rounded)),
                                Tab(child: Icon(Icons.account_box)),
                                Tab(child: Icon(Icons.settings)),
                              ],
                              isScrollable: true,
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 30),
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.orange),
                              controller: controller.tabController!.value,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: TabBarView(
                              controller: controller.tabController!.value,
                              children: [
                            Container(
                                color: Colors.yellow,
                                child: Center(
                                    child: Text(
                                  "HOME",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white),
                                ))),
                            Container(
                                color: Colors.green,
                                child: Center(
                                    child: Text(
                                  "SERACH",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white),
                                ))),
                            Container(
                                color: Colors.blueAccent,
                                child: Center(
                                    child: Text(
                                  "PERSON",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white),
                                ))),
                            Container(
                                color: Colors.grey,
                                child: Center(
                                    child: Text(
                                  "SETTING",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white),
                                ))),
                          ]))
                    ],
                  ));
            });
          }),
    );
  }
}
