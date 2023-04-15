
import 'package:dalton/drawerview.dart';
import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
  static String routename="favorite";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawerview(),
      appBar:AppBar(title: Text("")) ,
      body: Center(
        child: Text("d"),
      ),
    );
  }
}
