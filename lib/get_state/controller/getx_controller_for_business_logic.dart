import 'package:get/get.dart';

class BusinessLogic extends GetxController{

  // number two :   class GetxController extends DisposableInterface
  //   يعنى ال controller بتاع widget معينه هيتعمله delete من ال momery اول ما نتنقل ل widget تانيه و ده بيحسن performance

  // number three : include two method (init , dispose) stateful widget زى الللا موجودين فى

  @override
  // بتستدعى اول ما بنادى على  controller و بنفذ الكود اللى جواها
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  // بتستدعى لما يكون widget اتعملها render فى screen
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  // بيتنادى عليها لما controller  يتعمله delete من momery
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  // stateManagement
  /// getBuilder  -- not reactive  -high performance - اقل  momery  لانها بتستهلك
  /// Getx   -- reactive  -- stream   -  اللى هتشتغل بيه controller بتاخد ال -
  /// obx  -  من غير ما يكتب controller  مع  direct بيشتغل  -


// var counter = 0;
//   void increment (){
//     counter++;
//     update();  // عشان لما يحصل اى تغيير فى الميثود ال controller يعرف widget اللى هيه فيه زى listener
//   }


  /// استخدام GetX بمبدا ال stream
  var counter = 0.obs;   //خليت المتغير observer يعنى مستخدمه على هيئة RXObject
  void increment (){
    counter++;
  }

}