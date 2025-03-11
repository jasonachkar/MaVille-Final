// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FilterableCityList extends StatefulWidget {
  @override
  _FilterableCityListState createState() => _FilterableCityListState();
}

class _FilterableCityListState extends State<FilterableCityList> {
  List<String> originalList = [];
  List<String> filteredList = [];

  @override
  void initState() {
    super.initState();
    fetchCities();
  }

  void fetchCities() async {
    CollectionReference cities =
        FirebaseFirestore.instance.collection('villeNew');
    QuerySnapshot querySnapshot = await cities.get();
    final allData =
        querySnapshot.docs.map((doc) => doc['name'].toString()).toList();

    setState(() {
      originalList = allData;
      filteredList = List.from(originalList);
    });
  }

  List<String> filterList(String input, List<String> originalList) {
    if (input.isEmpty) {
      return originalList;
    } else {
      return originalList
          .where((item) => item.toLowerCase().contains(input.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter List Example'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (String value) {
                setState(() {
                  filteredList = filterList(value, originalList);
                });
              },
              decoration: InputDecoration(
                hintText: 'Type to filter',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredList.isEmpty
                  ? originalList.length
                  : filteredList.length,
              itemBuilder: (context, index) {
                final listToShow =
                    filteredList.isEmpty ? originalList : filteredList;
                return ListTile(
                  title: Text(listToShow[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
