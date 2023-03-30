import 'package:dalton/Favorite_screen.dart';
import 'package:dalton/main.dart';
import 'package:flutter/material.dart';

class Tabscreen extends StatefulWidget {
  const Tabscreen({Key? key}) : super(key: key);

  @override
  State<Tabscreen> createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text("LES DALTON"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.add),
                  text: "dgs",
                ),
                Tab(
                  icon: Icon(Icons.hearing),
                  text: "dgs",
                ),
                Tab(
                  icon: Icon(Icons.face),
                  text: "Favorite",
                ),


              ],
            ),
          ),
          body: TabBarView(children: [
            MyHomePage(title: "title"),
            Favorite(),
            MyHomePage(title: "titgsdgle"),

          ]),
        )
    );
  }
}
