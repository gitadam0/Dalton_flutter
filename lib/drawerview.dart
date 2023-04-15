

import 'package:dalton/Favorite_screen.dart';
import 'package:flutter/material.dart';

import 'Filters.dart';

class Drawerview extends StatelessWidget {


  buildlisttile(String t,IconData i, Function taphandler){

    return ListTile(
      leading: Icon(i),
      title:  Text(t),
      onTap: (){
        taphandler();
        },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child:Column(

        children: [
          Container(height: 20,
          color: Colors.grey,),

          Container(
            height: 70,

          color: Colors.yellow,
          width: double.infinity,
          alignment: Alignment.centerLeft ,
          child: Container(
            margin: EdgeInsets.only(left: 10),

            child: Text(
              "Les Dalton",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,


              ),
            ),
          ),
          ),
          SizedBox(height: 30, ),
          buildlisttile(
              "Home",
              Icons.home
              , (){
                Navigator.of(context).pushReplacementNamed("/");
              }
              ),
          buildlisttile(
              "Favorite",
              Icons.favorite,
                  (){
                Navigator.of(context).pushReplacementNamed(Filters.routename);
              }
          ),



        ],
      ) ,
    );
  }
}
