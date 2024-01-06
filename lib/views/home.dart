import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/contollers/homeController.dart';

class HomeView extends StatelessWidget {
  //int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<HomeController>(
          init: HomeController(),
          builder: (contoller) => Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          // setState(() {
                          //   counter++;
                          // });
                          contoller.increament();
                        },
                        icon: const Icon(Icons.add)),
                    //Text("${contoller.counter}"),//getbuilder
                    Text("${contoller.count.value}"),//value with obs variables
                    IconButton(
                        onPressed: () {
                          // setState(() {
                          //   counter--;
                          // });
                          contoller.decreament();
                        },
                        icon: const Icon(Icons.minimize))
                  ],
                ),
              )),
    );
  }
}
