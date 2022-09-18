import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final form = GlobalKey<FormState>();
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/b2.jpg"),
          fit: BoxFit.cover
      ),

      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text("Sign up Page", style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            child: Text("Enter Your Details Below",style: TextStyle(fontSize: 20)),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.tealAccent,
                                labelText: "Name",
                                helperText:"Enter Your Name" ,
                              ),
                              cursorColor: Colors.black,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: "E-mail or Mobile",
                                  helperText:"Enter Your E-mail Address or Mobile number"
                              ),
                              obscureText: true,
                              cursorColor: Colors.tealAccent,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: " Set User Name",
                                  helperText:"Enter Your User Name"
                              ),
                              obscureText: true,
                              cursorColor: Colors.tealAccent,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                            child: Form(
                              key: form,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          _isVisible = !_isVisible;
                                        });
                                      },
                                      icon: _isVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                                    ),
                                    labelText: " Set Password",
                                    helperText:"Enter Your Password"
                                ),
                                obscureText: true,
                                cursorColor: Colors.tealAccent,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white60),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => MyApp()));
                                },
                                child: Text(
                                  "Submit",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                        ],
                      ),
                      // ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
