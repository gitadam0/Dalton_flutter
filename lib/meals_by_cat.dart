import 'package:dalton/datapage.dart';
import 'package:flutter/material.dart';

import 'mealsView.dart';
class mealsbycat extends StatelessWidget {
  static const routename="mealsbycat";

  @override
  Widget build(BuildContext context) {

    var routearg=ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    var routearg_name=routearg['n'];

    List a= meal_list.where((element) {
      return element.cat==routearg_name;
    } ).toList() ;

    return Scaffold(

      appBar: AppBar(
        title: Text("widget.title"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView(padding: const EdgeInsets.all(10),

                    children: [
                      ...(a.map((e){
                        return Meal(e.name, e.img);
                        // Categoryitem(e.name,e.color);
                      }
                      ))

                    ],
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

                      maxCrossAxisExtent: 300,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1,


                    )
                ),
          ),
          FloatingActionButton(onPressed: (){
            Navigator.of(context).pop();
          },
          child: Icon(Icons.delete),
          )
        ],
      ),

        



      // Text(routearg_name.toString() +"   "+a.length.toString()),


    );

  }
}
