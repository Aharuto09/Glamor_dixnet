import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class package {
  String packageName;
  int price;

  package({required this.packageName, required this.price});
}

List<package> PriceList = [package(packageName: "packageName", price: 15)];

class firebasedatabase {
  List clientList = [];
  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("Glamor");

  Future getData() async {
    try {
      await collectionReference.get().then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          clientList.add(result.data());
        }
      });
      return clientList;
    } catch (e) {
      debugPrint("Error - $e");
      return null;
    }
  }
}
