import 'package:app_miidnight_admin/services/assets_manager.dart';
import 'package:flutter/material.dart';

class AppConstants {
  static  String productImageUrl = AssetsManager.laStrell;

  static List<String> categoriesList = [
    'Feminimo',
    'Infantil',
    'Masculino',
  ];

  static List<DropdownMenuItem<String>>? get categoriesDropDownList {
    List<DropdownMenuItem<String>>? menuItems =
        List<DropdownMenuItem<String>>.generate(
      categoriesList.length,
      (index) => DropdownMenuItem(
        value: categoriesList[index],
        child: Text(
          categoriesList[index],
        ),
      ),
    );
    return menuItems;
  }

  static const String appId = "1:773167046448:android:60231549ae1427d0db32f5";
  static const String apiKey = "AIzaSyCtNrY9c_rlQSHZc_FceCrBpnPWRDrUu0E";
  static const String messagingSenderId = "773167046448";
  static const String projectId = "pi---empresa";
  static const String storageBucket = "pi---empresa.appspot.com";
}
