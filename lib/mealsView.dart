import 'package:dalton/individualmeal.dart';
import 'package:flutter/material.dart';

import 'Mealmodel.dart';
class Meal extends StatelessWidget {
  var _e;
  Meal(this._e);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Navigator
            .of(context)
            .pushNamed(Individual_meal.routename,arguments: _e);

      },
      child: Card(

        child: Column(children: [


          Container(
                height: 100,
                width: double.infinity,
                child: Image.asset(_e.img,fit: BoxFit.contain,)),

          Text(_e.name)
        ],),
      ),
    );
  }
}
