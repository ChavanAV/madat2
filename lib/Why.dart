import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Listitems.dart';

class Why extends StatefulWidget {
  const Why({Key? key}) : super(key: key);

  @override
  State<Why> createState() => _WhyState();
}

class _WhyState extends State<Why> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/b2.jpg"),
          fit: BoxFit.cover
      ),

      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("MADAT", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 50,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text("Your Small Help Can Make Someone's Life",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white))),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 350,
              height: 550,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: litem.length,
                itemBuilder: (context, index) => builditem(litem[index]),
                separatorBuilder: (BuildContext context, int index) => SizedBox(height: 20),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget builditem(list litem) => Container(
      width: 300,
      height: 300,
      child: Image(
        image: AssetImage(litem.AssetsImage),
        fit: BoxFit.fill,
      ));
}
