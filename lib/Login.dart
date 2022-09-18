import 'package:madat2/Ui.dart';
import 'package:madat2/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constant.dart';
import 'Signup.dart';
import 'Ui.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();

}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  bool _isVisible = true;
  String pass="";
  String user="";
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/b2.jpg"),
          fit: BoxFit.cover
      ),

      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Text("Enter Your details",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30,50,30,0),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        fillColor: Colors.tealAccent,
                        labelText: "user name",
                        // helperText:"Enter user name" ,
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 7,
                                style: BorderStyle.solid,
                                color: Colors.red
                            ),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onChanged: (value) {

                        setState(() {
                          user = value;
                        });
                      },
                      onFieldSubmitted:(value) {
                        setState(() {
                          user = value;
                        });
                      },
                      cursorColor: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30,50,30,0),
                    child: Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.numberWithOptions(signed: true,decimal: false),
                            // validator:
                            decoration: InputDecoration(

                              suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    _isVisible = !_isVisible;
                                  });
                                },
                                icon: _isVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                              ),
                              labelText: "password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            onChanged: (value) {

                              setState(() {
                                pass = value;
                              });
                            },
                            onFieldSubmitted:  (value) {
                              setState(() {
                                pass = value;
                              });
                            },
                            obscureText: _isVisible,
                            cursorColor: Colors.white60,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text("Don't have an account ?")),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => Signup()));
                        },
                        child: Text("Sign Up")),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white60),
                      ),
                      onPressed: () {

                        if (user==Const.user && pass==Const.pass){
                          showPopup(true);
                        }
                        else{
                          showPopup(false);
                        }
                      }, child: Text("Login",style: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              // ),
            ),
          ),
        ),
      ),
    );
  }

  showPopup(bool flag) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context)=>
            AlertDialog(
              backgroundColor: Colors.grey,
              title: Text("Login"),
              content: (flag==true)?Text("Login sucessful"):Text("Login Failed.Try Again"),
              actions: <Widget>[
                ElevatedButton(
                    onPressed: (){
                      print("user : $user \n pass : $pass");
                      if(flag==true){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>Ui()));
                      }
                      else{
                        Navigator.pop(context);
                      }
                    }, child: Text("OK"))
              ],
            )
    );
  }
}
