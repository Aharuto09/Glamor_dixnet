import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glamor1/home.dart';

class Subscribe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/bg1.jpg"),
                  fit: BoxFit.cover)),
          child: Container(color: Colors.black54),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pricing Plan",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.w100),
                      ),
                      Row(
                        children: [
                          Text(
                            "Everything You Need to Promote Your ",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Business",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < 3; i++)
                      Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white54)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                                  child: Container(
                                      height: 450,
                                      width: 250,
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 20),
                                          Text(
                                            "STANDAR",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          SizedBox(height: 20),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "\$",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.deepOrange),
                                              ),
                                              Text(
                                                " 59",
                                                style: TextStyle(
                                                    fontSize: 36,
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.deepOrange),
                                              ),
                                              Text(
                                                "/Mo",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w200,
                                                    color: Colors.deepOrange),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Home()));
                                              },
                                              child: SizedBox(
                                                  height: 50,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [Text("Choose")],
                                                  )),
                                              style: ElevatedButton.styleFrom(
                                                  shape:
                                                      new RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        30.0),
                                              )))
                                        ],
                                      )))))
                  ],
                )
              ],
            ))
      ]),
    );
  }
}
