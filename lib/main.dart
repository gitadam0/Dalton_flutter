import 'package:dalton/Filters.dart';
import 'package:dalton/Horizantel_list.dart';
import 'package:dalton/categorie_model.dart';
import 'package:dalton/gridviewlist.dart';
import 'package:dalton/individualmeal.dart';
import 'package:dalton/mealsView.dart';
import 'package:dalton/meals_by_cat.dart';
import 'package:dalton/promoCard.dart';
import 'package:dalton/tabscreen.dart';
import 'package:flutter/material.dart';
import 'Favorite_screen.dart';

import 'datapage.dart';
import 'main2.dart';

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
      routes: {
         "/":(context)=>Tabscreen(),
          mealsbycat.routename:(context)=>mealsbycat(),
        Favorite.routename:(context)=>Favorite(),
        Filters.routename:(context)=>Filters(),
        Individual_meal.routename:(context)=>Individual_meal(),


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



    return   ListView(
      padding: const EdgeInsets.all(8),
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
        // Expanded(child: GridviewList()),
        Container(
            height: 300,
            child: GridviewList()),
      ],
    );
      // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //
            //   children: <Widget>[
            //     Container(
            //         margin: EdgeInsets.all(10),
            //         child: Text("special offers :",style: TextStyle(),
            //         )
            //     ),
            //     promocard(),
            //     Container(
            //         margin: EdgeInsets.all(10),
            //         child: Text("Category:",style: TextStyle(),
            //         )
            //     ),
            //
            //     Hori_list(),
            //
            //
            //     Text("ALL ITEMS :"),
            //
            //       Expanded(child: GridviewList()),
            //
            //
            //       // ListView.builder(
            //       //   scrollDirection: Axis.vertical,
            //       //   itemCount: cat_list.length,
            //       //   itemBuilder:(ctx,index){
            //       //     return Container(
            //       //       // color: Colors.red,
            //       //       margin: EdgeInsets.all(10),
            //       //       child: Column(
            //       //
            //       //         crossAxisAlignment: CrossAxisAlignment.center,
            //       //         children: [
            //       //
            //       //           Container(
            //       //               height:120,width: 120,child: Image.asset(cat_list[index].img)),
            //       //           Text(cat_list[index].name),
            //       //         ],
            //       //       ),
            //       //     );
            //       //   } ,
            //       //
            //       //
            //       // ),
            //
            //
            //
            //
            //
            //
            //   ],
            // );
  }
}
