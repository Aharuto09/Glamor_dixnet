import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glamor1/home.dart';
import 'package:glamor1/login.dart';
import 'package:glamor1/regisvendor.dart';
import 'package:glamor1/subscribe.dart';

class Regist extends StatelessWidget {
  final TextEditingController reg_name = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference client = firestore.collection("client");
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/bg1.jpg"), fit: BoxFit.cover)),
      child: Row(children: [
        Expanded(flex: 1, child: Container()),
        Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.black12)
              ]),
              child: ClipRRect(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 48),
                        height: double.infinity,
                        color: Colors.white10,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Create Account",
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        label: Text("Username"),
                                      ),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        label: Text("Email"),
                                      ),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        label: Text("Password"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(children: [
                                      Checkbox(
                                          value: false, onChanged: (value) {}),
                                      Text(
                                        "I read and agree to ",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        "Term \& Condition",
                                        style:
                                            TextStyle(color: Colors.deepOrange),
                                      )
                                    ]),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                            height: 50,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        new RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          30.0),
                                                )),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Home()));
                                                },
                                                child: Text(
                                                  "Register Now",
                                                  style: TextStyle(
                                                      color: Colors.black87),
                                                ))),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            height: 50,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    side: BorderSide(
                                                      width: 1.0,
                                                      color: Colors.red,
                                                    ),
                                                    primary: Colors.transparent,
                                                    shape:
                                                        new RoundedRectangleBorder(
                                                      borderRadius:
                                                          new BorderRadius
                                                              .circular(30.0),
                                                    )),
                                                onPressed: () {},
                                                child: Text(
                                                  "Sign Up with Google",
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                )))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Row(
                                      children: [
                                        Text("Already have an Account ?"),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Login()));
                                            },
                                            child: Text(
                                              "Sign In",
                                              style: TextStyle(
                                                  color: Colors.deepOrange,
                                                  fontWeight: FontWeight.bold),
                                            ))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                shape:
                                                    new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      30.0),
                                            )),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          RegisterVendor()));
                                            },
                                            child: Text(
                                              "Register As a Vendor",
                                              style: TextStyle(
                                                  color: Colors.black87),
                                            ))),
                                  ],
                                ),
                              ),
                            ]),
                      ))),
            ))
      ]),
    ));
  }
}
