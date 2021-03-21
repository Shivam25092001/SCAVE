import 'package:flutter/material.dart';
import 'package:flutter_app/Utils/Routes.dart';
import 'package:flutter_app/Utils/Routes.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 160,
            ),
            Center(
              child: Text("Welcome!",
                      style: TextStyle(
                                        fontSize: 45,
                                        color: Colors.amber,
                                        fontWeight: FontWeight.bold,
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      )
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: Text("Login",
                style: TextStyle(color: Colors.black),
                ),
                style: TextButton.styleFrom(backgroundColor: const Color(0xffFFCC00)),
            )
          ]
        ),
      ),
    );
  }
}
