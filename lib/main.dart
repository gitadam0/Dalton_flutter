import 'package:dalton/Horizantel_list.dart';
import 'package:dalton/categorie_model.dart';
import 'package:dalton/gridviewlist.dart';
import 'package:dalton/mealsView.dart';
import 'package:dalton/meals_by_cat.dart';
import 'package:dalton/promoCard.dart';
import 'package:flutter/material.dart';

import 'datapage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
        routes: {
        // "/":(context)=>main(),
          mealsbycat.routename:(context)=>mealsbycat(),

        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {



    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Container(
                margin: EdgeInsets.all(10),
                child: Text("special offers :",style: TextStyle(),
                )
            ),
            promocard(),
            Container(
                margin: EdgeInsets.all(10),
                child: Text("Category:",style: TextStyle(),
                )
            ),

            Hori_list(),


            Text("ALL ITEMS :"),

              GridviewList(),


              // ListView.builder(
              //   scrollDirection: Axis.vertical,
              //   itemCount: cat_list.length,
              //   itemBuilder:(ctx,index){
              //     return Container(
              //       // color: Colors.red,
              //       margin: EdgeInsets.all(10),
              //       child: Column(
              //
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //
              //           Container(
              //               height:120,width: 120,child: Image.asset(cat_list[index].img)),
              //           Text(cat_list[index].name),
              //         ],
              //       ),
              //     );
              //   } ,
              //
              //
              // ),






          ],
        ),
    );
  }
}
