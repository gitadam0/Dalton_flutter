import 'package:flutter/material.dart';

import 'meals_by_cat.dart';
import 'datapage.dart';


class Hori_list extends StatelessWidget {
  String routename="";



  @override
  Widget build(BuildContext context) {


    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cat_list.length,
        itemBuilder:(ctx,index){
          return InkWell(
            onTap: (){
              Navigator
                  .of(context)
                  .pushNamed(mealsbycat.routename,arguments: {"n":cat_list[index].name});
            },
            splashColor: Colors.red,
            child: Container(
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                      height:120,width: 120,child: Image.asset(cat_list[index].img)),
                  Text(cat_list[index].name),
                ],
              ),
            ),
          );
        } ,


      ),
    );
  }
}
