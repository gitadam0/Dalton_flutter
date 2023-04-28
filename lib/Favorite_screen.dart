
import 'package:dalton/drawerview.dart';
import 'package:flutter/material.dart';

import 'datapage.dart';
import 'mealsView.dart';

class Favorite extends StatelessWidget {
  static String routename="favorite";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: favoritelist.isEmpty?Text("dffg")   :Expanded(
          child: GridView(padding: const EdgeInsets.all(10),

              children: [
                ...(favoritelist.map((e){
                  return Meal(e);
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
      ),
    );
  }
}
