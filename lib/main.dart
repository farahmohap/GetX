import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/Localization/local.dart';
import 'package:getx/Localization/local_contoller.dart';
import 'package:getx/views/home.dart';
import 'package:getx/views/obxHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController c = Get.put(LocalController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // locale: Get.deviceLocale,
      //locale: c.initialLang,
      translations: Localization(),
      home: ObxHomeView(),
    );
  }
}
