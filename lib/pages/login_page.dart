import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login Here",
                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                ),
        ),
      ),
    );
  }
}
