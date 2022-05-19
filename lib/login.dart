import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glamor1/home.dart';
import 'package:glamor1/regist.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      child: Row(children: [
        Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/bg1.jpg"),
                      fit: BoxFit.cover)),
            )),
        Expanded(
            flex: 1,
            child: Container(
              child: Column(children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffe5e5e5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 30,
                                offset: Offset(0, -5))
                          ]),
                      padding: EdgeInsets.all(20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Don't have an Account ? "),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Regist()));
                                    },
                                    child: Text("Sign Up"))
                              ],
                            )),
                            Spacer(),
                            Container(
                                padding: EdgeInsets.all(48),
                                height: 700,
                                width: 500,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 20,
                                          color: Colors.black12,
                                          offset: Offset(10, 10)),
                                      BoxShadow(
                                          blurRadius: 20,
                                          color: Colors.white54,
                                          offset: Offset(-10, -10))
                                    ],
                                    color: Colors.white),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sign In",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w100,
                                            fontSize: 32,
                                            color: Colors.black45),
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            label: Text("Username")),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            label: Text("Password")),
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      Container(
                                        child: Wrap(
                                          children: [
                                            Container(
                                                width: 270,
                                                child: Row(children: [
                                                  Checkbox(
                                                      value: false,
                                                      onChanged: (value) {}),
                                                  Text(
                                                    "Remember me",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  )
                                                ])),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Forgot password ?",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(30.0),
                                          )),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Home()));
                                          },
                                          child: Container(
                                              height: 48,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [Text("Sign In")],
                                              ))),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              shape: new RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        30.0),
                                              )),
                                          onPressed: () {},
                                          child: Container(
                                              height: 48,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Sign In with Google",
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  )
                                                ],
                                              ))),
                                    ],
                                  ),
                                )),
                            Spacer()
                          ]),
                    )),
                Container(
                  height: 64,
                )
              ]),
            )),
      ]),
    )));
  }
}
