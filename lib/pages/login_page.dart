import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_world/utils/myRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHomePage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Material(
          color: Colors.white,
          child: SingleChildScrollView(
              child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome, $name',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Username",
                            labelText: "Username",
                          ),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Username cannot be empty!";
                            }

                            return null;
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Password cannot be empty!";
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Material(
                          color: changeButton ? Colors.green : Colors.blue,
                          borderRadius: changeButton
                              ? BorderRadius.circular(200)
                              : BorderRadius.circular(8),
                          child: InkWell(
                            onTap: () => moveToHomePage(context),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              height: 50,
                              width: 120,
                              child: changeButton
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(

                                  //borderRadius: BorderRadius.circular(8),
                                  ),
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          )),
        ));
  }
}
