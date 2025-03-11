// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<String>> fetchAndFilterCities(String query) async {
  CollectionReference cities =
      FirebaseFirestore.instance.collection('villeNew');
  QuerySnapshot querySnapshot = await cities.get();
  List<String> allData =
      querySnapshot.docs.map((doc) => doc['name'].toString()).toList();

  if (query.isEmpty) {
    return allData;
  } else {
    return allData
        .where((city) => city.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
