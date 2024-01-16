// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> fecha() async {
  // i need to create new variable with the current date + 115 day, every time i use the function
  DateTime currentDate = DateTime.now();
  DateTime futureDate = currentDate.add(Duration(days: 115));
  String formattedDate =
      "${futureDate.year}-${futureDate.month}-${futureDate.day}";
  List<String> dateList = [formattedDate];
  return dateList;
}
