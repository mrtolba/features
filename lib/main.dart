
import 'package:features/localization/sreen/home_screen.dart';
import 'package:features/localization/sreen/translations.dart';
import 'package:features/theme_data/theme/theme_data_light.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {

    await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: getThemeDataLight(),
      home: const HomeScreen(),
      translations: Translation(),
      /// start lang @ App run
      locale: Locale('en'),
      // لو App فيه error فى  file اللغات فهيستخدم اللغة  en ك default
      fallbackLocale:  Locale('en'),
    );
  }
}

