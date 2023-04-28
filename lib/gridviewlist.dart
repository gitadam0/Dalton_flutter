import 'package:dalton/Mealmodel.dart';
import 'package:flutter/material.dart';

import 'datapage.dart';
import 'mealsView.dart';

class GridviewList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GridView(padding: const EdgeInsets.all(20),
    children: [
    ...(
        cat_list.map((e){
          return Meal(e );
    // Categoryitem(e.name,e.color);
    }
    )
    )

    ],
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

    maxCrossAxisExtent: 200,
    mainAxisSpacing: 10,
    crossAxisSpacing: 20,
    childAspectRatio: 1,


    )
    )
    ;
  }
}
