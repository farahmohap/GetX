import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Localization/local_contoller.dart';
import 'package:getx/contollers/homeController.dart';

class ObxHomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
  final LocalController langcontroller = Get.put(LocalController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1".tr)),
      body: Obx(() => Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          controller.increament();
                          print("object");
                        },
                        icon: const Icon(Icons.add)),
                    Text("${controller.count.value}"),
                    IconButton(
                        onPressed: () {
                          controller.decreament();
                        },
                        icon: const Icon(Icons.minimize))
                  ],
                ),
                MaterialButton(
                  onPressed: () {
                    langcontroller.changeLang("en");
                  },
                  child: Text("En"),
                ),
                MaterialButton(
                    onPressed: () {
                      langcontroller.changeLang("ar");
                    },
                    child: Text("ar"))
              ],
            ),
          )),
    );
  }
}
