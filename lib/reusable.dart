import 'package:flutter/material.dart';

class GreyElevatedButton extends StatelessWidget {
  String title;
  int? numflex;
  Function onBtnClick;
  GreyElevatedButton(this.title,this.onBtnClick,[this.numflex])
  {
    if (this.numflex == null) {
      this.numflex = 1;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: numflex!,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFa5a5a5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),

        ),
        onPressed: (){
          onBtnClick(title);
        },
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class YellowElevatedButton extends StatelessWidget {
  String title;
  int? numflex;
  Function onBtnClick;

  YellowElevatedButton(this.title, this.onBtnClick, [this.numflex])
  {
    if (this.numflex == null) {
      this.numflex = 1;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: numflex!,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFfe9505),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),

        ),
        onPressed: (){
          onBtnClick(title);
        },
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}

class DarkGreyElevatedButton extends StatelessWidget {
  String title;
  int? numflex;
  Function onBtnClick;
  DarkGreyElevatedButton(this.title, this.onBtnClick , [this.numflex])
  {
    if (this.numflex == null) {
      this.numflex = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: numflex!,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFF333333),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),

        ),
        onPressed: (){
          onBtnClick(title);
        },
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}



