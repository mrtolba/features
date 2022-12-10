import 'package:features/get_state/controller/getx_controller_for_business_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    BusinessLogic object = Get.put(BusinessLogic());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// getBuilder
          // GetBuilder<BusinessLogic>(
          //   init: BusinessLogic(),
          //     builder: (value) => Text("${value.counter}")),
          // GetBuilder<BusinessLogic>(
          //   builder: (value) => MaterialButton(
          //     child: const Text("INCREMENT"),
          //       onPressed: (){
          //         value.increment();
          //       },
          //   ),
          // ),
          /// Getx
          // GetX<BusinessLogic>(
          //     init: BusinessLogic(),
          //     builder: (value) => Text("${value.counter.value}")),
          // MaterialButton(
          //     child: const Text("INCREMENT"),
          //     onPressed: (){
          //       object.increment();
          //     },
          //   ),

          ///obx
          Obx(
                  () => Text("${object.counter.value}")),
          MaterialButton(
            child: const Text("INCREMENT"),
            onPressed: (){
              object.increment();
            },
          ),
        ],
      ),
    );
  }
}
