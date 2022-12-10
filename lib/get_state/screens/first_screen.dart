import 'package:features/get_state/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
      MaterialButton(
        onPressed: (){
          // number one : transform move from screen to another

          Navigator.push(context,
            MaterialPageRoute(builder: (context) => SecondScreen(),
            ),
          );

          Get.to(SecondScreen());

        },
        child: Text("Move"),

      ),
      ),
    );
  }
}
