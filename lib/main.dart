import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:glamor1/login.dart';
import 'package:glamor1/regist.dart';
import 'package:glamor1/regisvendor.dart';
import 'package:glamor1/subscribe.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glamor Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: FutureBuilder(
          future: _initialization,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print("Error");
            } else if (snapshot.connectionState == ConnectionState.done) {
              return Login();
            }
            return SizedBox(
                height: 50, width: 50, child: CircularProgressIndicator());
          }),
    );
  }
}
