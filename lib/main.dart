import 'package:dalton/categorie_model.dart';
import 'package:flutter/material.dart';

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

    List<categorie> l=[
      categorie("0", "BURGER", "lib/assets/images/burger.png"),
      categorie("0", "PIZZA", "lib/assets/images/pizza.jfif"),
      categorie("0", "STEACK", "lib/assets/images/steack.jfif"),
      categorie("0", "SALAD", "lib/assets/images/salad.jpg"),
      categorie("0", "TACOS", "lib/assets/images/taco.jfif")
    ];

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
                itemCount: l.length,
                itemBuilder:(ctx,index){
                  return Container(
                    // color: Colors.red,
                    margin: EdgeInsets.all(10),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Container(
                            height:120,width: 120,child: Image.asset(l[index].img)),
                        Text(l[index].name),
                      ],
                    ),
                  );
                } ,


              ),
            ),


            Container(
              height: 620,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: l.length,
                itemBuilder:(ctx,index){
                  return Container(
                    // color: Colors.red,
                    margin: EdgeInsets.all(10),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Container(
                            height:120,width: 120,child: Image.asset(l[index].img)),
                        Text(l[index].name),
                      ],
                    ),
                  );
                } ,


              ),
            ),





          ],
        ),
    );
  }
}
