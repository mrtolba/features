import 'package:flutter/material.dart';

class ThemeDataScreen extends StatelessWidget {
  const ThemeDataScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Switch(
              value: true,
              onChanged: (value){},
          ),
          Text(
            'Welcome',
            style: Theme.of(context).textTheme.displayLarge,

          ),
          TextButton(
              onPressed: (){},
              child:Text(
                'Pressed',
              ),

          ),
          Icon(
            Icons.access_alarm_outlined,
          ),
          Theme(
            data: ThemeData(
              iconTheme: IconThemeData(
                size: 10.0,
                color: Colors.black87,
              ),

            ),
            child: Icon(
              Icons.access_alarm_outlined,
            ),
          ),
        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){},
      ) ,
    );
  }
}
