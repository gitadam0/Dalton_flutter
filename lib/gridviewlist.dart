import 'package:flutter/material.dart';

import 'datapage.dart';
import 'mealsView.dart';

class GridviewList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
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
    )
    );
  }
}
