import 'package:features/localization/controller/app_language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> listItem = [
    "en",
    "ar",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<AppLanguage>(
        init: AppLanguage(),
        builder: (controller){
          return Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            child: Directionality(
              textDirection:  controller.appLocale == 'en' ? TextDirection.ltr : TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("login".tr,
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: 50,),
                  Text("SignUp".tr,
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),

                  DropdownButton(
                        dropdownColor: Colors.cyanAccent,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 35,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                        value: controller.appLocale,
                        onChanged: (value){
                          controller.changeLanguage(value);
                          // this line to update lang
                          Get.updateLocale(Locale(value));

                        },
                        items: listItem.map((e) {
                          return DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          );
                        }).toList(),


                      ),



                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
