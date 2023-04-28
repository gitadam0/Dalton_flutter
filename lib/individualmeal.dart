import 'package:flutter/material.dart';

import 'Mealmodel.dart';
import 'datapage.dart';

class Individual_meal extends StatefulWidget {

  static String routename="individualmeal";


  @override
  State<Individual_meal> createState() => _Individual_mealState();
}

class _Individual_mealState extends State<Individual_meal> {






  @override
  Widget build(BuildContext context) {


    var var_fromroute=ModalRoute.of(context)?.settings.arguments as meal;

    bool isFav() {
      return favoritelist.any((element) => element.name == var_fromroute.name);
    }

    add() {

      setState(() {
        if (isFav() == true) {
          favoritelist.removeWhere((element) => element.name == var_fromroute.name);
        } else{
          favoritelist.add(meal("0", var_fromroute.name,var_fromroute.cat, var_fromroute.img),);

        }

      });
    }


    return Scaffold(
      appBar: AppBar(title: Text("individual"),),
      body: Column(children: [

        Text(var_fromroute.name.toString()),
        FloatingActionButton(
          onPressed: add,
          child: Icon(isFav() ? Icons.favorite  : Icons.favorite_outline  ),
        ),
      ],),
    );
  }
}
