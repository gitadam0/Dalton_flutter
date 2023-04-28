
import 'package:dalton/drawerview.dart';
import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  static String routename="filters";

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  var gluten_free=false;
  var vegeterian=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawerview(),
      appBar:AppBar(title: Text("Filters")) ,
      body: Column(children: [
        Expanded(child: ListView(
          children: [
SwitchListTile(
    title: Text("gluten free"),
    subtitle:Text("show only gluten free meals") ,
    value: gluten_free,
    onChanged: (newvalue) {
      setState(() {
        gluten_free=newvalue;
      });

    }
)
          ],
        ))
      ],)
    );
  }
}
