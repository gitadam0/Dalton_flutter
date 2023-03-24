import 'package:dalton/categorie_model.dart';
import 'package:dalton/mealsView.dart';
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            Container(
              margin: EdgeInsets.all(10),
              child: Card(
                color: Colors.red,
                child: Row(
                  children: [
                    Text("special"),

              ],
                )
                ,),
            ),
            Text("categori"),
            Container(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cat_list.length,
                itemBuilder:(ctx,index){
                  return Container(
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
                  );
                } ,


              ),
            ),

            Text("ALL ITEMS :"),
            Container(
              height: 620,
              child:GridView(padding: const EdgeInsets.all(10),
                  children: [
                    ...(cat_list.map((e){
                      return Meal(e.name, e.img);
                        // Categoryitem(e.name,e.color);
                    }
                    ))

                  ],
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

                    maxCrossAxisExtent: 300,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1.5,


                  )
              ),
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
            ),





          ],
        ),
    );
  }
}
