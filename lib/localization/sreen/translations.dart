import 'package:features/localization/utils_langs/ar.dart';
import 'package:features/localization/utils_langs/en.dart';
import 'package:get/get.dart';

class Translation extends Translations{
  @override

  // keys : اللغات اللى بيدعمها التطبيق
  Map<String, Map<String, String>> get keys => {
    'en' : en,
    'ar' : ar,
  };

}