import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glamor1/login.dart';
import 'package:glamor1/subscribe.dart';

class RegisterVendor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/bg2.jpg"),
                        fit: BoxFit.cover)),
                child: Row(
                  children: [
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(40),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Colors.black45,
                              Colors.transparent,
                            ],
                          )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Create Your Business Account",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    label: Text("Service Category")),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    label: Text("Business Name")),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    label: Text("Email Address")),
                              ),
                              TextField(
                                decoration:
                                    InputDecoration(label: Text("Location")),
                              ),
                              TextField(
                                decoration:
                                    InputDecoration(label: Text("Password")),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(vertical: 24),
                                  child: Row(children: [
                                    Checkbox(
                                        value: false, onChanged: (value) {}),
                                    Text(
                                      "I read and agree to ",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "Term \& Condition",
                                          style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontWeight: FontWeight.bold),
                                        ))
                                  ])),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Subscribe()));
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: 50,
                                      width: double.infinity,
                                      child: Text("Start"))),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 24),
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 1, color: Colors.black38))),
                              ),
                              Row(
                                children: [
                                  Text("Already have an Account ? "),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Login()));
                                    },
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ))));
  }
}
