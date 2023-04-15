import 'package:dalton/individualmeal.dart';
import 'package:flutter/material.dart';
class Meal extends StatelessWidget {
  String name;
  String img;
  Meal(this.name,this.img);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Navigator
            .of(context)
            .pushNamed(Individual_meal.routename,arguments: name);

      },
      child: Card(

        child: Column(children: [


          Container(
                height: 100,
                width: double.infinity,
                child: Image.asset(img,fit: BoxFit.contain,)),

          Text(name)
        ],),
      ),
    );
  }
}
