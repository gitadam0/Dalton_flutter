import 'package:flutter/material.dart';

class Individual_meal extends StatefulWidget {

  static String routename="individualmeal";


  @override
  State<Individual_meal> createState() => _Individual_mealState();
}

class _Individual_mealState extends State<Individual_meal> {





  @override
  Widget build(BuildContext context) {

    var name_fromroute=ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text("individual"),),
      body: Text(name_fromroute),
    );
  }
}
