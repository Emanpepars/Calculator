import 'package:flutter/material.dart';

import 'Calculator.dart';

void main(){
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        CalculatorScreen.routeName: (context) => CalculatorScreen(),
      },
      initialRoute: CalculatorScreen.routeName,
    );
  }

}
