import 'package:get_storage/get_storage.dart';

class LocalStorage {
  /// two method : read & write for data
  /// write
  void saveLanguageToDisk (String language) async {
          // instance
    await GetStorage().write('lang', language);



  }

  ///Read
   Future<String> get languageSelected async {
    return await GetStorage().read('lang');
}
}