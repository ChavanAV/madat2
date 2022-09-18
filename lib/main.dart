import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'Listitems.dart';
import 'Login.dart';
import 'Signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/b2.jpg"),
      // fit: BoxFit.cover
      // ),
      // ),
      child: Scaffold(
        drawer: SafeArea(
          child: Drawer(
            backgroundColor: Colors.white,
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: ListTile(
                    title: Text("You are not loged in pleas login to this app",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Icon(Icons.login, color: Colors.grey),
                          )
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Icon(Icons.person_add_alt_sharp,
                                color: Colors.grey),
                          )
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "Settings",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Icon(Icons.settings, color: Colors.grey),
                          )
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "About Us",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Icon(Icons.question_answer_outlined,
                                color: Colors.grey),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("MADAT", style: TextStyle(color: Colors.red)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 50,
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18),
                ))
          ],
          flexibleSpace: Container(
            // decoration: BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage("assets/images/b1.jpg"),
            //   fit: BoxFit.cover,
            // )
            // ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: 400,
                  height: 675,
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
      ),
    );
  }

  Widget fpm(fpage f1) => Container(
    margin: EdgeInsets.all(20),
        width: 300,
        height: 170,
        decoration: f1.decoration,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20,top: 20),
                child: Text(f1.Text,style: TextStyle(fontSize: 18),)
            ),
            Container(
              height: 129,
              width: 300,
              alignment: Alignment.centerLeft,
              child: Image(image: AssetImage(f1.AssetsImage,),fit: BoxFit.fill),
            )
          ],
        ),
      );
}
