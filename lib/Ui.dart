import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'Listitems.dart';

class Ui extends StatefulWidget {
  const Ui({Key? key}) : super(key: key);

  @override
  State<Ui> createState() => _UiState();
}

class _UiState extends State<Ui> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MADAT", style: TextStyle(color: Colors.red)),
          // centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 50,
          // actions: [
          //   IconButton(onPressed: () {
          //
          //   },
          //   icon: Icon(Icons.notifications_active,color: Colors.black,)),
          //   SizedBox(
          //     width: 39,
          //   ),
          //   // Container(
          //   //   padding: EdgeInsets.all(12),
          //   //     child: Image(image: AssetImage("assets/images/illustration-05.png"),fit: BoxFit.fill)
          //   // ),
          //   SizedBox(
          //     width: 22,
          //   ),
          // ],
          bottom: TabBar(

            tabs: [
              Tab(
                icon: Icon(Icons.home_outlined,color: Colors.black),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.handshake_outlined,color: Colors.black),
                text: "Donate",
              ),
              Tab(
                icon: Icon(Icons.help,color: Colors.black),
                text: "Get Help",
              ),
              Tab(
                icon: Icon(Icons.settings,color: Colors.black),
                text: "Settings",
              ),
              Tab(
                icon: Icon(Icons.notifications_active,color: Colors.black),
                text: "Home",
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          children: [

            Column(
              children: [
                SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          // margin: EdgeInsets.only(top: 20),
                          width: 400,
                          height: 600,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: f1.length,
                            itemBuilder: (context, index) => fpm(f1[index]),
                            // separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 10,)
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            buildPage("Donate page"),
            buildPage("get help page"),
            buildPage("settings page"),
            buildPage("Notification page"),
          ],
        ),
      ),
    );
  }

 Widget buildPage(String text) => Center(
   child: Text(
     text,
     style: TextStyle(fontSize: 18),
   ),
 );


  Widget fpm(fpage f1) => Column(
    children: [
      Container(
        margin: EdgeInsets.all(20),
        width: 350,
        height: 170,
        decoration: f1.decorationa,
      ),
      Container(
          child: Text(f1.Text,style: TextStyle(fontSize: 18),)
      )
    ],
  );
}
