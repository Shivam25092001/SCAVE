import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Utils/Routes.dart';
import 'package:flutter_app/Utils/Routes.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String username = "";
  bool pressButton = false;

  @override//
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
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
                      //to change the welcome text as per username
                    },
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

                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            
            //ElevatedButton(
             //   onPressed: (){
             //     Navigator.pushNamed(context, MyRoutes.homeRoute);
             //   },
             //   child: Text("Login",
             //   style: TextStyle(color: Colors.black),
             //   ),
             //   style: TextButton.styleFrom(backgroundColor: const Color(0xffFFCC00)),
             // )
            InkWell(
                onTap: (){
                  //Navigator.pushNamed(context, MyRoutes.homeRoute);
                  setState(() {
                    pressButton = true;
                  });

                },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                 child: Text("Login", style: TextStyle(fontFamily: 'GlacialIndifference',fontSize: 18),),
                  height: 45,
                  width: pressButton ? 45 : 90,
                  alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xffFFCC00),
                  borderRadius: BorderRadius.circular(pressButton ? 45 : 10),
                  //shape: pressButton?BoxShape.circle:BoxShape.rectangle,

                ),
          ),
            ),

        ]
        ),
      ),
    );
  }
}
