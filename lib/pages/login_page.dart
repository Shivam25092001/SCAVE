import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Utils/Routes.dart';
import 'package:flutter_app/Utils/Routes.dart';

String username = "";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  bool pressButton = false;


  @override//
  Widget build(BuildContext context) {

    return Material(
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              SizedBox(
              height: 160,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0,0.0,16.0,0.0),
              child: Center(
                child: Text("Welcome! $username",
                        style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'GlacialIndifference'
                        ),

                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),

            Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      onChanged: (str) {
                        username=str;
                      },
                      validator: (String val) {
                        if(val.isEmpty){
                          return "Username cannot be empty";
                        }
                        return null ;
                      }
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                        ),
                        validator: (String val) {
                          if(val.isEmpty){
                            return "Password cannot be empty";
                          }
                          else if(val.length<6){
                            return "Password cannot be smaller than six";
                          }

                          return null ;
                        }

                    ),
                  ],
                ),
            ),

            SizedBox(
              height: 30,
            ),

            InkWell(

                onTap: () async{
                  await Future.delayed( Duration(seconds: 2) );
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                  setState(() {
                  pressButton = true;
                });
              },

                child: AnimatedContainer(
                  duration: Duration(seconds: 0),
                  child: pressButton? Icon(Icons.done,color: Colors.white) : Text("Login", style: TextStyle(fontFamily: 'GlacialIndifference',fontSize: 18),),
                  height: 45,
                  width: pressButton ? 45 : 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                  color: const Color(0xffFFCC00),
                  borderRadius: BorderRadius.circular(pressButton ? 45 : 10),
                  

                  ),
              ),
            ),
            ]
          ),
        ),
      )
    );
  }
}
