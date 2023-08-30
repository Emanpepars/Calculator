import 'package:Calculator/reusable.dart';
import 'package:flutter/material.dart';

class CalculatorScreen  extends StatefulWidget {

  static const String routeName = "Calculator";

  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,bottom: 20, right: 20),
          child: Column(
            children: [
              Container(height: 400,
                  margin: const EdgeInsets.only(right: 30, bottom: 20),
                  alignment: Alignment.bottomRight,
                  child:  Text(result,style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),)),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DarkGreyElevatedButton('9',onBtnClick),
                    const SizedBox(width: 10),
                    DarkGreyElevatedButton('8',onBtnClick),
                    const SizedBox(width: 10),
                    DarkGreyElevatedButton('7',onBtnClick),
                    const SizedBox(width: 10),
                    YellowElevatedButton('/',onOperatorClick),
                  ],
                ),
              ),
              const SizedBox(height: 12,),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DarkGreyElevatedButton('6',onBtnClick),
                    const SizedBox(width: 10),
                    DarkGreyElevatedButton('5',onBtnClick),
                    const SizedBox(width: 10),
                    DarkGreyElevatedButton('4',onBtnClick),
                    const SizedBox(width: 10),
                    YellowElevatedButton('*',onOperatorClick),
                  ],
                ),
              ),
              const SizedBox(height: 12,),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    DarkGreyElevatedButton('3',onBtnClick),
                    const SizedBox(width: 10),
                    DarkGreyElevatedButton('2',onBtnClick),
                    const SizedBox(width: 10),
                    DarkGreyElevatedButton('1',onBtnClick),
                    const SizedBox(width: 10),
                    YellowElevatedButton('-',onOperatorClick),
                  ],
                ),
              ),
              const SizedBox(height: 12,),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GreyElevatedButton('.',onBtnClick),
                    const SizedBox(width: 10),
                    GreyElevatedButton('0',onBtnClick),
                    const SizedBox(width: 10),

                    GreyElevatedButton('=',onEqualOperatorClick),
                    const SizedBox(width: 10),
                    YellowElevatedButton('+',onOperatorClick),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String op = '';
  String res = "";

  String? calculate(String lhs,String op,String rhs){
    int lHS = int.parse(lhs) ;
    int rHS = int.parse(rhs) ;
    int data = 0;
    if (op == "+"){
      data = lHS + rHS ;
    }else if (op == '-'){
      data = lHS -  rHS ;
    }else if (op == '*'){
      data = lHS *  rHS ;
    }else if (op == '/'){
      data = lHS ~/rHS ;
    }
    return data.toString();

  }

  void onOperatorClick(operator){
    if (op.isEmpty){
      res = result ;
    }else{
      res = calculate(res,op,result)!;
    }
    op = operator;
    result = "";
    print(res);
    setState(() {

    });
  }

  void onEqualOperatorClick(operator){
    res = calculate(res, op , result)!;
    result = res;
    op ='';
    res='';
    setState(() {

    });
  }

  void onBtnClick(value){
    if(op==''){
      result='';
    }
    result+= value;
    setState(() {
      print(result);
    });
  }
}
