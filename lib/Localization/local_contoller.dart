import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalController extends GetxController {
  SharedPreferences? prefs;
  // Locale initialLang() async {
  //   prefs = await SharedPreferences.getInstance();
  //   prefs!.setString("lang", "langCode");
  //   Locale initLang = prefs!.getString("lang") == "ar"
  //       ? const Locale("ar")
  //       : const Locale("en");

  //   return initLang;
  // }

  void changeLang(String langCode) {
    Locale locale = Locale(langCode);
    Get.updateLocale(locale);
  }
}
