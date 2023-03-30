import 'package:flutter/material.dart';
class Meal extends StatelessWidget {
  String name;
  String img;
  Meal(this.name,this.img);
  @override
  Widget build(BuildContext context) {
    return Card(

      child: Column(children: [
        Container(
            height: 80,
            width: double.infinity,
            child: Image.asset(img,fit: BoxFit.contain,)),
        Text(name)
      ],),
    );
  }
}
